.class public Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;
.super Lcom/sshtools/common/files/AbstractFileAdapter;
.source "ReadOnlyFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/files/ReadOnlyFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadOnlyAbstractFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/files/ReadOnlyFileFactory;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/ReadOnlyFileFactory;Lcom/sshtools/common/files/AbstractFile;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;->this$0:Lcom/sshtools/common/files/ReadOnlyFileFactory;

    .line 62
    invoke-direct {p0, p2}, Lcom/sshtools/common/files/AbstractFileAdapter;-><init>(Lcom/sshtools/common/files/AbstractFile;)V

    return-void
.end method


# virtual methods
.method public getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "+",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/files/ReadOnlyFileFactory$ReadOnlyAbstractFile;->this$0:Lcom/sshtools/common/files/ReadOnlyFileFactory;

    return-object v0
.end method

.method public isWritable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
