.class Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;
.super Ljava/io/OutputStream;
.source "AbstractFileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/files/AbstractFileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppendOutputStream"
.end annotation


# instance fields
.field content:Lcom/sshtools/common/files/AbstractFileRandomAccess;

.field final synthetic this$0:Lcom/sshtools/common/files/AbstractFileImpl;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/AbstractFileImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;->this$0:Lcom/sshtools/common/files/AbstractFileImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/sshtools/common/files/AbstractFileImpl;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/files/AbstractFileImpl;->createNewFile()Z
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcom/sshtools/common/files/AbstractFileImpl;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;->content:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    .line 61
    :try_start_1
    invoke-virtual {p1}, Lcom/sshtools/common/files/AbstractFileImpl;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->seek(J)V
    :try_end_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 63
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;->content:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;->content:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-interface {v0, v2, v3, v1}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;->content:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->write([BII)V

    return-void
.end method
