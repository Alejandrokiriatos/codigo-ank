.class Lcom/sshtools/common/publickey/authorized/NoArgOption;
.super Lcom/sshtools/common/publickey/authorized/Option;
.source "NoArgOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/publickey/authorized/Option<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/publickey/authorized/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormattedOption()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/NoArgOption;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
