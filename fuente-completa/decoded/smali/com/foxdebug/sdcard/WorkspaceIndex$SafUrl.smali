.class Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;
.super Ljava/lang/Object;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sdcard/WorkspaceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafUrl"
.end annotation


# instance fields
.field final docId:Ljava/lang/String;

.field final treeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->treeUrl:Ljava/lang/String;

    .line 1804
    iput-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$SafUrl;->docId:Ljava/lang/String;

    return-void
.end method
