.class Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;
.super Ljava/lang/Object;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sdcard/WorkspaceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanStats"
.end annotation


# instance fields
.field dirs:I

.field files:I

.field indexed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1793
    iput v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->files:I

    .line 1794
    iput v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->dirs:I

    .line 1795
    iput v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;->indexed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/sdcard/WorkspaceIndex-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sdcard/WorkspaceIndex$ScanStats;-><init>()V

    return-void
.end method
