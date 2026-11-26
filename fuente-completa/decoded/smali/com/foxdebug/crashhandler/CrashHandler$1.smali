.class Lcom/foxdebug/crashhandler/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/crashhandler/CrashHandler;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/crashhandler/CrashHandler;

.field final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;


# direct methods
.method constructor <init>(Lcom/foxdebug/crashhandler/CrashHandler;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/foxdebug/crashhandler/CrashHandler$1;->this$0:Lcom/foxdebug/crashhandler/CrashHandler;

    iput-object p2, p0, Lcom/foxdebug/crashhandler/CrashHandler$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 26
    const-string p1, "CrashHandler"

    const/16 v0, 0xa

    :try_start_0
    const-string v1, "Uncaught native exception detected!"

    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 29
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/foxdebug/crashhandler/CrashHandler$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    .line 34
    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 36
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v4, "error_type"

    const-string v5, "Native Crash"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v4, "error_message"

    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 44
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    :goto_0
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string p2, "stack_trace"

    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10008000

    .line 48
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 57
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 60
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_0
    move-exception p2

    .line 54
    :try_start_1
    const-string v1, "Failed to launch CrashActivity"

    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 57
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 60
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_1
    move-exception p1

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    .line 57
    invoke-static {p2}, Landroid/os/Process;->killProcess(I)V

    .line 60
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 61
    throw p1
.end method
