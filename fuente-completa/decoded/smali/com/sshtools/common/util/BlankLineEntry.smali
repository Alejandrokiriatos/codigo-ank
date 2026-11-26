.class public Lcom/sshtools/common/util/BlankLineEntry;
.super Lcom/sshtools/common/util/Entry;
.source "BlankLineEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/util/Entry<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/sshtools/common/util/Entry;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormattedEntry()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ""

    return-object v0
.end method
