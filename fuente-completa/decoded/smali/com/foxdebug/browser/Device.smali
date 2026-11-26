.class Lcom/foxdebug/browser/Device;
.super Ljava/lang/Object;
.source "Emulator.java"


# instance fields
.field public height:I

.field public icon:Ljava/lang/String;

.field public id:I

.field public isDesktop:Z

.field public name:Ljava/lang/String;

.field public view:Lcom/foxdebug/browser/DeviceView;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    .line 351
    const-string v4, "\ue927"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 347
    invoke-direct/range {v0 .. v5}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/foxdebug/browser/Device;->id:I

    .line 339
    iput-object p1, p0, Lcom/foxdebug/browser/Device;->name:Ljava/lang/String;

    .line 340
    iput-object p4, p0, Lcom/foxdebug/browser/Device;->icon:Ljava/lang/String;

    .line 341
    iput p2, p0, Lcom/foxdebug/browser/Device;->width:I

    .line 342
    iput p3, p0, Lcom/foxdebug/browser/Device;->height:I

    .line 343
    iput-boolean p5, p0, Lcom/foxdebug/browser/Device;->isDesktop:Z

    return-void
.end method


# virtual methods
.method public deselect()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/foxdebug/browser/Device;->view:Lcom/foxdebug/browser/DeviceView;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/foxdebug/browser/DeviceView;->deselect()V

    :cond_0
    return-void
.end method

.method public select()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/foxdebug/browser/Device;->view:Lcom/foxdebug/browser/DeviceView;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/foxdebug/browser/DeviceView;->select()V

    :cond_0
    return-void
.end method
