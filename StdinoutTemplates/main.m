#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 標準入力を取得する
        NSData *stdinData = [[NSFileHandle fileHandleWithStandardInput] availableData];
        NSString *stdinString = [[NSString alloc] initWithData:stdinData encoding:NSUTF8StringEncoding];
        
        // 標準入力を半角スペース区切りで配列に格納する
        NSArray *stdinArray = [stdinString componentsSeparatedByString:@" "];
        
        // TODO: 問題を解く
        // ここでは標準入力をそのまま解答とする
        NSArray *result = [stdinArray copy];
        
        // 解答を半角スペース区切りで文字列とする
        NSString *stdoutString = [result componentsJoinedByString:@" "];
        
        // 解答を標準出力する
        NSFileHandle *fileHandle = [NSFileHandle fileHandleWithStandardOutput];
        [fileHandle writeData:[stdoutString dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
    }
    
    return 0;
}
