.class public interface abstract Lcom/sshtools/common/logger/RootLoggerContext;
.super Ljava/lang/Object;
.source "RootLoggerContext.java"

# interfaces
.implements Lcom/sshtools/common/logger/LoggerContext;


# virtual methods
.method public abstract enableConsole(Lcom/sshtools/common/logger/Log$Level;)V
.end method

.method public abstract enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;)V
.end method

.method public abstract enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V
.end method

.method public abstract enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract shutdown()V
.end method
