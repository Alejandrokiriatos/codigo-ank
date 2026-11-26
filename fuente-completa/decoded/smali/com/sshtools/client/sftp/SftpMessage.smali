.class public Lcom/sshtools/client/sftp/SftpMessage;
.super Lcom/sshtools/common/util/ByteArrayReader;
.source "SftpMessage.java"

# interfaces
.implements Lcom/sshtools/client/tasks/Message;


# instance fields
.field requestId:I

.field type:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 38
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpMessage;->read()I

    move-result p1

    iput p1, p0, Lcom/sshtools/client/sftp/SftpMessage;->type:I

    .line 39
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/sshtools/client/sftp/SftpMessage;->requestId:I

    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sshtools/client/sftp/SftpMessage;->requestId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/sshtools/client/sftp/SftpMessage;->type:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/sshtools/synergy/ssh/ByteArrays;->getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/util/ByteArrayReader;->buf:[B

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ByteArrays;->releaseByteArray([B)V

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpMessage;->close()V

    return-void
.end method
