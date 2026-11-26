.class public Lcom/sshtools/common/sftp/MultipartTransferRegistry;
.super Ljava/lang/Object;
.source "MultipartTransferRegistry.java"


# static fields
.field static transfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/MultipartTransfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->transfers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransfer(Ljava/lang/String;)Lcom/sshtools/common/sftp/MultipartTransfer;
    .locals 1

    .line 37
    sget-object v0, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->transfers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/sftp/MultipartTransfer;

    return-object p0
.end method

.method public static registerTransfer(Lcom/sshtools/common/sftp/MultipartTransfer;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->transfers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/sshtools/common/sftp/MultipartTransfer;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeTransfer(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->transfers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
