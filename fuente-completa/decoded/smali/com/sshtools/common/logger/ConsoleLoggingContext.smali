.class public Lcom/sshtools/common/logger/ConsoleLoggingContext;
.super Lcom/sshtools/common/logger/AbstractLoggingContext;
.source "ConsoleLoggingContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sshtools/common/logger/AbstractLoggingContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/logger/Log$Level;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sshtools/common/logger/AbstractLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public varargs log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, Lcom/sshtools/common/logger/ConsoleLoggingContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1, p2, p3, p4}, Lcom/sshtools/common/logger/DefaultLoggerContext;->prepareLog(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method public newline()V
    .locals 1

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    .locals 4

    .line 47
    invoke-virtual {p0, p1}, Lcom/sshtools/common/logger/ConsoleLoggingContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->prepareLog(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method
