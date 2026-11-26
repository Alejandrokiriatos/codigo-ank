.class public Lcom/sshtools/common/util/CommentEntry;
.super Lcom/sshtools/common/util/Entry;
.source "CommentEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/util/Entry<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/sshtools/common/util/Entry;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormattedEntry()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sshtools/common/util/CommentEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
