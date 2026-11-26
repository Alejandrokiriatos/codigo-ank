.class public Lcom/sshtools/common/publickey/CriticalOption$Builder;
.super Ljava/lang/Object;
.source "CriticalOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/publickey/CriticalOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field tmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CriticalOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/CriticalOption;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    return-object v0
.end method

.method public createCustomOption(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/publickey/CriticalOption$Builder;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/CriticalOption;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createCustomOption(Ljava/lang/String;[B)Lcom/sshtools/common/publickey/CriticalOption$Builder;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/CriticalOption;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;[BZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public forceCommand(Ljava/lang/String;)Lcom/sshtools/common/publickey/CriticalOption$Builder;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/CriticalOption;

    const-string v2, "force-command"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs sourceAddress([Ljava/lang/String;)Lcom/sshtools/common/publickey/CriticalOption$Builder;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/publickey/CriticalOption$Builder;->tmp:Ljava/util/List;

    new-instance v1, Lcom/sshtools/common/publickey/CriticalOption;

    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->csv([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const-string v3, "source-address"

    invoke-direct {v1, v3, p1, v2}, Lcom/sshtools/common/publickey/CriticalOption;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
