.class Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "SftpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/sftp/SftpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RandomAccessFileOutputStream"
.end annotation


# instance fields
.field file:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 3758
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3759
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;->file:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3771
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3763
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3767
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$RandomAccessFileOutputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
