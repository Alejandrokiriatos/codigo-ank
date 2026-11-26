.class public Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;
.super Ljava/lang/Object;
.source "AbstractFileSeekableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field file:Lcom/sshtools/common/files/AbstractFile;

.field tmp:Ljava/nio/channels/SeekableByteChannel;

.field tmpfile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->file:Lcom/sshtools/common/files/AbstractFile;

    .line 46
    const-string p1, "abfs"

    const-string v0, "tmp"

    invoke-static {p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmpfile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmpfile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    :try_start_2
    invoke-static {v1, v0}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    .line 61
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 58
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 57
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;->tmp:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
