.class public interface abstract Lcom/sshtools/common/files/AbstractFileFactory;
.super Ljava/lang/Object;
.source "AbstractFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sshtools/common/files/AbstractFile;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public getDefaultPath()Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public populateEvent(Lcom/sshtools/common/events/Event;)Lcom/sshtools/common/events/Event;
    .locals 0

    return-object p1
.end method
