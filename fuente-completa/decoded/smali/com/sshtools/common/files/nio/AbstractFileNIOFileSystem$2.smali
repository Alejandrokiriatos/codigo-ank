.class Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;
.super Ljava/lang/Object;
.source "AbstractFileNIOFileSystem.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->iterator(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

.field final synthetic val$children:Ljava/util/List;

.field final synthetic val$path:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->this$0:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iput-object p2, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->val$children:Ljava/util/List;

    iput-object p3, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->val$path:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->index:I

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->val$children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/Path;
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->val$path:Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->val$children:Ljava/util/List;

    iget v2, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
