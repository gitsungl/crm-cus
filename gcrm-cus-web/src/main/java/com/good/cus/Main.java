package com.good.cus;

import java.io.File;
import java.lang.reflect.Field;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Set;

import org.apache.jasper.runtime.TldScanner;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class Main {

	public static void main(String[] args) throws Exception {
		
		if (args.length < 2) {
			System.out.println("java Main CONTEXT_PATH PORT");
			return;
		}
		String contextPath = "/" + args[0];
		int port = Integer.parseInt(args[1]);

		Server server = createServer(contextPath, port);

		try {
			server.start();
			server.join();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(100);
		}
	}

	private static Server createServer(String contextPath, int port) throws Exception {
		//use Eclipse JDT compiler
		System.setProperty("org.apache.jasper.compiler.disablejsr199", "true");

		/* fix jetty8.x, jetty 9.x can't load jstl library */
		Field f = TldScanner.class.getDeclaredField("systemUris");
		f.setAccessible(true);
		((Set) f.get(null)).clear();
		f.setAccessible(false);
		
		Server server = new Server(port);
		server.setStopAtShutdown(true);

		ProtectionDomain protectionDomain = Main.class.getProtectionDomain();
		URL location = protectionDomain.getCodeSource().getLocation();

		String warFile = location.toExternalForm();
		WebAppContext context = new WebAppContext(warFile, contextPath);
		context.setServer(server);

		//设置work dir,war包将解压到该目录，jsp编译后的文件也将放入其中。
		String currentDir = new File(location.getPath()).getParent();
		File workDir = new File(currentDir, "work");
		context.setTempDirectory(workDir);
		
		System.out.println(workDir.getAbsolutePath() + "/webapp/nativelib");
		System.setProperty("java.library.path", workDir.getAbsolutePath() + "/webapp/nativelib");

		server.setHandler(context);
		return server;
	}

}
