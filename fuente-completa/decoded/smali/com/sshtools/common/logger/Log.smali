.class public Lcom/sshtools/common/logger/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/logger/Log$Level;
    }
.end annotation


# static fields
.field static currentContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sshtools/common/logger/LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field static defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCurrentContext()V
    .locals 1

    .line 75
    sget-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private static varargs contextLog(Lcom/sshtools/common/logger/LoggerContext;Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    .line 158
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sshtools/common/logger/LoggerContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 120
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 116
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enableConsole(Lcom/sshtools/common/logger/Log$Level;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/RootLoggerContext;->enableConsole(Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 132
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->ERROR:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 144
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->ERROR:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;
    .locals 4

    .line 35
    const-class v0, Lcom/sshtools/common/logger/Log;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/sshtools/common/logger/Log;->defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 38
    :try_start_1
    new-instance v1, Lcom/sshtools/common/logger/DefaultLoggerContext;

    invoke-direct {v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;-><init>()V

    sput-object v1, Lcom/sshtools/common/logger/Log;->defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 43
    :cond_0
    :goto_0
    sget-object v1, Lcom/sshtools/common/logger/Log;->defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 91
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0}, Lcom/sshtools/common/logger/Log;->isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public static isErrorEnabled()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->ERROR:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0}, Lcom/sshtools/common/logger/Log;->isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public static isInfoEnabled()Z
    .locals 1

    .line 87
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0}, Lcom/sshtools/common/logger/Log;->isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public static isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z
    .locals 2

    .line 99
    sget-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/LoggerContext;

    .line 100
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/LoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/LoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result p0

    return p0

    .line 103
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/RootLoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result p0

    return p0
.end method

.method public static isTraceEnabled()Z
    .locals 1

    .line 95
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0}, Lcom/sshtools/common/logger/Log;->isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public static isWarnEnabled()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->WARN:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0}, Lcom/sshtools/common/logger/Log;->isLevelEnabled(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method protected static varargs log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/LoggerContext;

    .line 150
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/LoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v0, p0, p1, p2, p3}, Lcom/sshtools/common/logger/Log;->contextLog(Lcom/sshtools/common/logger/LoggerContext;Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sshtools/common/logger/Log;->contextLog(Lcom/sshtools/common/logger/LoggerContext;Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Z)V
    .locals 2

    .line 162
    sget-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/LoggerContext;

    .line 163
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sshtools/common/logger/LoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0, p0, p1}, Lcom/sshtools/common/logger/LoggerContext;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 166
    invoke-interface {v0}, Lcom/sshtools/common/logger/LoggerContext;->newline()V

    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sshtools/common/logger/RootLoggerContext;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 171
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sshtools/common/logger/RootLoggerContext;->newline()V

    :cond_1
    return-void
.end method

.method public static setDefaultContext(Lcom/sshtools/common/logger/RootLoggerContext;)V
    .locals 1

    .line 52
    const-class v0, Lcom/sshtools/common/logger/Log;

    monitor-enter v0

    .line 53
    :try_start_0
    sput-object p0, Lcom/sshtools/common/logger/Log;->defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setupCurrentContext(Lcom/sshtools/common/logger/LoggerContext;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/sshtools/common/logger/Log;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->WARN:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->WARN:Lcom/sshtools/common/logger/Log$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/sshtools/common/logger/Log;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 48
    sget-object v0, Lcom/sshtools/common/logger/Log;->defaultContext:Lcom/sshtools/common/logger/RootLoggerContext;

    invoke-interface {v0}, Lcom/sshtools/common/logger/RootLoggerContext;->shutdown()V

    return-void
.end method
