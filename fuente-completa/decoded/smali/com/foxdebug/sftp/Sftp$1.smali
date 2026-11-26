.class Lcom/foxdebug/sftp/Sftp$1;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->openRemoteShell(Lcom/sshtools/client/SshClient;IILorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$channel:Lcom/sshtools/client/SessionChannelNG;

.field final synthetic val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Lcom/foxdebug/sftp/Sftp$RemoteShell;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$1;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$1;->val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$1;->val$channel:Lcom/sshtools/client/SessionChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 3

    .line 632
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp$1;->val$channel:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getExitCode()I

    move-result p1

    .line 633
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$1;->val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 634
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 633
    :goto_0
    invoke-static {v0, p1, v2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public onChannelDataIn(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 618
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp$1;->val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    invoke-static {p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$msendData(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onChannelError(Lcom/sshtools/common/ssh/Channel;Ljava/lang/Throwable;)V
    .locals 1

    .line 641
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp$1;->val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    if-nez p2, :cond_0

    const-string p2, "SSH shell error"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public onChannelExtendedData(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 627
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp$1;->val$shell:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    invoke-static {p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$msendData(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/nio/ByteBuffer;)V

    return-void
.end method
