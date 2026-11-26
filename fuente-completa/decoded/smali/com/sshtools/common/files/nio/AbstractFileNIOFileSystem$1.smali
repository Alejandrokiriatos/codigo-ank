.class Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$1;
.super Ljava/nio/file/FileStore;
.source "AbstractFileNIOFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getFileStores()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalSpace()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnallocatedSpace()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "abfs"

    return-object v0
.end method

.method public supportsFileAttributeView(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public supportsFileAttributeView(Ljava/lang/String;)Z
    .locals 1

    .line 103
    const-string v0, "basic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "abfs"

    return-object v0
.end method
