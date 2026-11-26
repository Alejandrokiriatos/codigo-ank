.class Lcom/sshtools/common/files/direct/NioFile$3;
.super Ljava/lang/Object;
.source "NioFile.java"

# interfaces
.implements Lcom/sshtools/common/files/FileVolume;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/direct/NioFile;->getVolume()Lcom/sshtools/common/files/FileVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/files/direct/NioFile;

.field final synthetic val$nativeStore:Ljava/nio/file/FileStore;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/nio/file/FileStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFile$3;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    iput-object p2, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockSize()J
    .locals 2

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getBlockSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 748
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public blocks()J
    .locals 4

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getTotalSpace()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile$3;->blockSize()J

    move-result-wide v2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 739
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public flags()J
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public freeBlocks()J
    .locals 4

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUnallocatedSpace()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile$3;->blockSize()J

    move-result-wide v2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 725
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public freeInodes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public id()J
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFile;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/files/direct/NioFileFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFileFactory;->isSandboxed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFile;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/files/direct/NioFileFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFileFactory;->home()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public maxFilenameLength()J
    .locals 2

    const-wide/16 v0, 0xff

    return-wide v0
.end method

.method public totalInodes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public underlyingBlockSize()J
    .locals 2

    .line 693
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile$3;->blockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public userFreeBlocks()J
    .locals 4

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$3;->val$nativeStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile$3;->blockSize()J

    move-result-wide v2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public userFreeInodes()J
    .locals 2

    .line 679
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile$3;->freeInodes()J

    move-result-wide v0

    return-wide v0
.end method
