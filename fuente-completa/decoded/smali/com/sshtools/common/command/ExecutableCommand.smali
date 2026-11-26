.class public interface abstract Lcom/sshtools/common/command/ExecutableCommand;
.super Ljava/lang/Object;
.source "ExecutableCommand.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/command/ExecutableCommand$ExecutableCommandFactory;
    }
.end annotation


# static fields
.field public static final STILL_ACTIVE:I = -0x80000000


# virtual methods
.method public abstract allocatePseudoTerminal(Ljava/lang/String;IIII[B)Z
.end method

.method public abstract createProcess([Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getExitCode()I
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getSession()Lcom/sshtools/common/ssh/SessionChannel;
.end method

.method public abstract getStderrOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract init(Lcom/sshtools/common/ssh/SessionChannelServer;)V
.end method

.method public abstract kill()V
.end method

.method public abstract onStart()V
.end method

.method public abstract start()V
.end method
