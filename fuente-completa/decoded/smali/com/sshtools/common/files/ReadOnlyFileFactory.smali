.class public Lcom/sshtools/common/files/ReadOnlyFileFactory;
.super Ljava/lang/Object;
.source "ReadOnlyFileFactory.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFileFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/files/AbstractFileFactory<",
        "Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;",
        ">;"
    }
.end annotation


# instance fields
.field fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/AbstractFileFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sshtools/common/files/ReadOnlyFileFactory;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultPath()Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/sshtools/common/files/ReadOnlyFileFactory;->getDefaultPath()Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPath()Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;

    iget-object v1, p0, Lcom/sshtools/common/files/ReadOnlyFileFactory;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFileFactory;->getDefaultPath()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;-><init>(Lcom/sshtools/common/files/ReadOnlyFileFactory;Lcom/sshtools/common/files/AbstractFile;)V

    return-object v0
.end method

.method public bridge synthetic getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/ReadOnlyFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;)Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;

    iget-object v1, p0, Lcom/sshtools/common/files/ReadOnlyFileFactory;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    invoke-interface {v1, p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;-><init>(Lcom/sshtools/common/files/ReadOnlyFileFactory;Lcom/sshtools/common/files/AbstractFile;)V

    return-object v0
.end method

.method public populateEvent(Lcom/sshtools/common/events/Event;)Lcom/sshtools/common/events/Event;
    .locals 0

    return-object p1
.end method
