.class Lcom/foxdebug/browser/Browser$5;
.super Lcom/foxdebug/browser/Emulator$Callback;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Browser;->createDeviceEmulatorLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Browser;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$5;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-direct {p0}, Lcom/foxdebug/browser/Emulator$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(IIF)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/foxdebug/browser/Browser$5;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {v0, p1, p2, p3}, Lcom/foxdebug/browser/Browser;->-$$Nest$mfitWebViewTo(Lcom/foxdebug/browser/Browser;IIF)V

    return-void
.end method
