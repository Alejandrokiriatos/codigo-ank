.class final Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;
.super Ljava/io/FileInputStream;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptedFileInputStream"
.end annotation


# instance fields
.field private final mEncryptedInputStream:Ljava/io/InputStream;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 343
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mLock:Ljava/lang/Object;

    .line 348
    iput-object p2, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "For encrypted files, please open the relevant FileInput/FileOutputStream."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .locals 2

    .line 389
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 391
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 398
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileInputStream;->mEncryptedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
