.class public Lcom/sshtools/client/sftp/SftpFileInputStream;
.super Ljava/io/InputStream;
.source "SftpFileInputStream.java"


# instance fields
.field private currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

.field private currentMessageRemaining:I

.field private error:Z

.field private final handle:Lcom/sshtools/client/sftp/SftpHandle;

.field private isEOF:Z

.field private length:Lcom/sshtools/common/util/UnsignedInteger64;

.field private final outstandingRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private position:J

.field private readPosition:J

.field private final sftp:Lcom/sshtools/client/sftp/SftpChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpHandle;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->readPosition:J

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->isEOF:Z

    .line 49
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->error:Z

    .line 63
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    .line 64
    iput-wide p2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    .line 65
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getSFTPChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    .line 66
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->length:Lcom/sshtools/common/util/UnsignedInteger64;

    return-void
.end method

.method private bufferMoreData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    const-wide/32 v2, 0x8000

    const v4, 0x8000

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->length:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v1, v5, v6, v4}, Lcom/sshtools/client/sftp/SftpHandle;->postReadRequest(JI)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 203
    iget-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    iget-wide v5, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    invoke-virtual {v1, v5, v6, v4}, Lcom/sshtools/client/sftp/SftpHandle;->postReadRequest(JI)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 212
    iget-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->position:J

    :cond_1
    return-void
.end method

.method private bufferNextMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    const-string v0, "Unexpected status "

    const-string v1, "The server responded with an unexpected SFTP protocol message! type="

    const/4 v2, 0x1

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpFileInputStream;->bufferMoreData()V

    .line 134
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/util/UnsignedInteger32;

    .line 136
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v4, v3}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    .line 138
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v4

    const/16 v5, 0x67

    if-ne v4, v5, :cond_2

    .line 140
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    .line 142
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "Received SSH_FXP_DATA with {} bytes at position {} for {} requestId={}"

    iget v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->readPosition:J

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    .line 146
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v3
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x65

    if-ne v3, v4, :cond_8

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v3

    long-to-int v1, v3

    if-ne v1, v2, :cond_4

    .line 156
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const-string v0, "Received SSH_FX_EOF for {}"

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_3
    iput-boolean v2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->isEOF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 162
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpChannel;->getVersion()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    .line 163
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    const-string v3, "Received SSH_FXP_STATUS {}/{} for {}"

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    .line 168
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v0, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 165
    invoke-static {v3, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_5
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    const-string v3, "Received SSH_FXP_STATUS {} for {}"

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 179
    :try_start_4
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    .line 180
    throw v0

    .line 182
    :cond_8
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpFileInputStream;->close()V

    .line 183
    new-instance v0, Ljava/io/IOException;

    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    .line 185
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpMessage;->getType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 191
    iput-boolean v2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->error:Z

    .line 192
    throw v0

    :catch_1
    move-exception v0

    .line 188
    iput-boolean v2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->error:Z

    .line 189
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 240
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->error:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "Discarding {} data messages through premature closing of InputStream for file {}"

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->error:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    .line 249
    iget-object v2, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getResponse(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpMessage;->release()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 224
    new-array v1, v0, [B

    .line 225
    invoke-virtual {p0, v1}, Lcom/sshtools/client/sftp/SftpFileInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 226
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->isEOF:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    if-nez v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->release()V

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, p3

    :goto_0
    if-ge v0, p3, :cond_5

    .line 85
    iget-boolean v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->isEOF:Z

    if-nez v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    if-nez v3, :cond_2

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpFileInputStream;->bufferNextMessage()V

    .line 89
    iget-boolean v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->isEOF:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    return v1

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    if-eqz v3, :cond_4

    .line 98
    iget v3, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 100
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpMessage;->array()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    .line 101
    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpMessage;->getPosition()I

    move-result v5

    .line 100
    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-wide v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->readPosition:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->readPosition:J

    .line 104
    iget v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    .line 105
    iget-object v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessage:Lcom/sshtools/client/sftp/SftpMessage;

    invoke-virtual {v4, v6, v7}, Lcom/sshtools/client/sftp/SftpMessage;->skip(J)J

    .line 107
    iget v4, p0, Lcom/sshtools/client/sftp/SftpFileInputStream;->currentMessageRemaining:I

    if-nez v4, :cond_3

    .line 108
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpFileInputStream;->bufferNextMessage()V

    :cond_3
    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v3

    goto :goto_0

    .line 95
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to obtain file data or status from the SFTP server!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v0

    :catch_0
    move-exception p1

    .line 120
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 118
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2
.end method
