palette1 <- c("#8E3b46","#E87461","#FAF8D4","#A1CF6B","#C1CAD6","#48A9A6","#4357AD","#4C2C69")

library(molaR)
library(geomorph)
xfile <- file.choose()
x <- read.ply(xfile)
OPC(x, minimum_area = 0.01)
OPCx_output <- OPC(x, minimum_area = 0.01)
OPC3d (OPCx_output, maskDiscard = TRUE, binColors = palette1, fileName='test')
OPCr (x, minimum_area = 0.01)



xfile <- file.choose()
x <- read.ply(xfile)
DNE(x, outliers = 0.1, BoundaryDiscard = "Vertex")
DNE3d(dneoutput)


xfile <- file.choose()
x <- read.ply(xfile)
RFI_output <- RFI(x, alpha=0.5)
RFI3d(
  RFI_output,
  displacement = -1.9,
  SurfaceColor = "gray",
  FootColor = "red",
  FootPts = FALSE,
  FootPtsColor = "black",
  Opacity = 1,
  legend = F,
  legendScale = 1,
  leftOffset = 0,
  fieldofview = 0
)
Check2D(RFI_output)
