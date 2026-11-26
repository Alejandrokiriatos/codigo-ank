.class Lcom/sshtools/common/files/nio/AbstractFilePath$1;
.super Ljava/lang/Object;
.source "AbstractFilePath.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/nio/AbstractFilePath;->iterator()Ljava/util/Iterator;
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
.field private idx:I

.field final synthetic this$0:Lcom/sshtools/common/files/nio/AbstractFilePath;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFilePath;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFilePath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 323
    iput p1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 327
    iget v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->idx:I

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFilePath;

    invoke-virtual {v1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

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

    .line 321
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/Path;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFilePath;

    iget v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;->idx:I

    invoke-virtual {v0, v1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getName(I)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method
