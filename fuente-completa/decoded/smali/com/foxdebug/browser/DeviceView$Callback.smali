.class public abstract Lcom/foxdebug/browser/DeviceView$Callback;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/browser/DeviceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSelect(Lcom/foxdebug/browser/DeviceView;)V
.end method
