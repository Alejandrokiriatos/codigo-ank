.class public interface abstract Lcom/sshtools/common/logger/LoggerContext;
.super Ljava/lang/Object;
.source "LoggerContext.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract isLogging(Lcom/sshtools/common/logger/Log$Level;)Z
.end method

.method public varargs abstract log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
.end method

.method public abstract newline()V
.end method

.method public abstract raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
.end method
