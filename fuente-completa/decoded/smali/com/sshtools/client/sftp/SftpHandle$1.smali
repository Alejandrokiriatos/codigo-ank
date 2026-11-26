.class Lcom/sshtools/client/sftp/SftpHandle$1;
.super Ljava/lang/Object;
.source "SftpHandle.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/sftp/SftpHandle;->lock(JJI)Ljava/io/Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/sftp/SftpHandle;

.field final synthetic val$length:J

.field final synthetic val$offset:J


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpHandle;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    iput-wide p2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->val$offset:J

    iput-wide p4, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->val$length:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v0}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpChannel;->nextRequestId()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v1}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpChannel;->createPacket()Lcom/sshtools/common/ssh/Packet;

    move-result-object v1

    const/16 v2, 0x17

    .line 170
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 171
    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    .line 172
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v2}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgethandle(Lcom/sshtools/client/sftp/SftpHandle;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 173
    iget-wide v2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->val$offset:J

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 174
    iget-wide v2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->val$length:J

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(J)V

    .line 176
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v2}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpChannel;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V

    .line 178
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v1}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpHandle$1;->this$0:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-static {v2}, Lcom/sshtools/client/sftp/SftpHandle;->-$$Nest$fgetfile(Lcom/sshtools/client/sftp/SftpHandle;)Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 180
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
