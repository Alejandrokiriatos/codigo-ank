.class Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;
.super Ljava/lang/Object;
.source "AbstractFileDirectoryStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->iterator()Ljava/util/Iterator;
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
.field final synthetic this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-static {v0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->-$$Nest$fgetopen(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-static {v0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->-$$Nest$fgetiterator(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized next()Ljava/nio/file/Path;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-static {v0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->-$$Nest$fgetopen(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;->this$0:Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-static {v0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->-$$Nest$fgetiterator(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
