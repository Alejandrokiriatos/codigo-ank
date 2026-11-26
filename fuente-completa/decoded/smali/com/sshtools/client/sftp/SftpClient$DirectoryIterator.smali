.class Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;
.super Ljava/lang/Object;
.source "SftpClient.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/sftp/SftpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectoryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sshtools/client/sftp/SftpFile;",
        ">;"
    }
.end annotation


# instance fields
.field currentFolder:Lcom/sshtools/client/sftp/SftpHandle;

.field currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation
.end field

.field currentPage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sshtools/client/sftp/SftpClient;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 3781
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->this$0:Lcom/sshtools/client/sftp/SftpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3778
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentPage:Ljava/util/Vector;

    .line 3783
    invoke-static {p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->-$$Nest$mresolveRemotePath(Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3785
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listing files for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3788
    :cond_0
    invoke-static {p1}, Lcom/sshtools/client/sftp/SftpClient;->-$$Nest$fgetsftp(Lcom/sshtools/client/sftp/SftpClient;)Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/sftp/SftpChannel;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentFolder:Lcom/sshtools/client/sftp/SftpHandle;

    .line 3791
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->getNextPage()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getNextPage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 3798
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3799
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentFolder:Lcom/sshtools/client/sftp/SftpHandle;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentPage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpHandle;->listChildren(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3804
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3801
    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    .line 3802
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 3809
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/sshtools/client/sftp/SftpFile;
    .locals 2

    .line 3817
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_3

    .line 3822
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3823
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/sftp/SftpFile;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3826
    :goto_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3828
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->getNextPage()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3834
    :goto_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    if-eqz v0, :cond_1

    :goto_2
    if-nez v0, :cond_2

    .line 3838
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/sftp/SftpFile;

    goto :goto_3

    .line 3831
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    :goto_3
    return-object v0

    .line 3818
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 3775
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/SftpClient$DirectoryIterator;->next()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    return-object v0
.end method
