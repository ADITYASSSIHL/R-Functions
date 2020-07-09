A<- rnorm(n=10, mean=20, sd=5)
B<- rnorm(n=10, mean=20, sd=5)
C<- rnorm(n=10, mean=20, sd=5)
D<- rnorm(n=10, mean=20, sd=5)

A[sample.int(10,3)]<-NA
B[sample.int(10,3)]<-NA
C[sample.int(10,3)]<-NA
D[sample.int(10,3)]<-NA

randomsampleegenwithna<-function(x,y,z){
    sample<-data.frame(replicate(z,{
        A<-rnorm(x)
        A[sample.int(x,y)]<-NA
        A}))
    sample
}