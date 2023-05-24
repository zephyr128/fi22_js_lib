//
//  JSWrapper.swift
//  fi22
//
//  Created by Nenad Prahovljanovic on 24.5.23..
//

import JavaScriptCore

struct JSLibHandler {
    
    static var shared = JSLibHandler()
    private var lib = "fi22_lib"
    private var context = JSContext()
    
    init() {
        let scriptURL = Bundle.main.url(forResource: "fi22_lib", withExtension: "js")!
        let script = try? String(contentsOf: scriptURL)
        context?.evaluateScript(script)
    }
    
    public func getInPlayDelay() -> Int {
        if let context {
            return context.evaluateScript("getInPlayDelay()").toNumber().intValue
        }
        return 77
    }
    
}
