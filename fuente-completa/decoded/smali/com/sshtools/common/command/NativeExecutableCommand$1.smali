.class Lcom/sshtools/common/command/NativeExecutableCommand$1;
.super Ljava/lang/Object;
.source "NativeExecutableCommand.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/command/NativeExecutableCommand;->createProcess([Ljava/lang/String;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/command/NativeExecutableCommand;


# direct methods
.method constructor <init>(Lcom/sshtools/common/command/NativeExecutableCommand;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$1;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDataIn(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 98
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 99
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    :try_start_0
    iget-object p2, p0, Lcom/sshtools/common/command/NativeExecutableCommand$1;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object p2, p2, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 102
    iget-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$1;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object p1, p1, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 104
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Faild to write to process"

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$1;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object p1, p1, Lcom/sshtools/common/command/NativeExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannelServer;->close()V

    return-void
.end method
