.class public Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;
.super Ljava/lang/Object;
.source "AbstractFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/AbstractFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpenDirectory"
.end annotation


# instance fields
.field children:[Lcom/sshtools/common/files/AbstractFile;

.field f:Lcom/sshtools/common/files/AbstractFile;

.field filter:Lcom/sshtools/common/sftp/SftpFileFilter;

.field readpos:I

.field final synthetic this$0:Lcom/sshtools/common/sftp/AbstractFileSystem;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/sftp/AbstractFileSystem;Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/sftp/SftpFileFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->this$0:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 679
    iput p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->readpos:I

    .line 683
    iput-object p2, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->f:Lcom/sshtools/common/files/AbstractFile;

    .line 684
    iput-object p3, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->filter:Lcom/sshtools/common/sftp/SftpFileFilter;

    .line 685
    invoke-interface {p2}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p2

    new-array p1, p1, [Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/files/AbstractFile;

    iput-object p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->children:[Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method


# virtual methods
.method public getChildren()[Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->children:[Lcom/sshtools/common/files/AbstractFile;

    return-object v0
.end method

.method public getFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->f:Lcom/sshtools/common/files/AbstractFile;

    return-object v0
.end method

.method public getFilter()Lcom/sshtools/common/sftp/SftpFileFilter;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->filter:Lcom/sshtools/common/sftp/SftpFileFilter;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 697
    iget v0, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->readpos:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/sshtools/common/sftp/AbstractFileSystem$OpenDirectory;->readpos:I

    return-void
.end method
