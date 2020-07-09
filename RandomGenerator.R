#i make four random vectors of 10 elements
A<- rnorm(n=10, mean=20, sd=5)
B<- rnorm(n=10, mean=20, sd=5)
C<- rnorm(n=10, mean=20, sd=5)
D<- rnorm(n=10, mean=20, sd=5)

#i insert 3 NAs in each of them
A[sample.int(10,3)]<-NA
B[sample.int(10,3)]<-NA
C[sample.int(10,3)]<-NA
D[sample.int(10,3)]<-NA

# the number of elements in each vector is x, number of NA repeated in each vecotor is y and no total number of vectors

randomsampleegenwithna<-function(x,y,z){
    sample<-data.frame(replicate(z,{
        A<-rnorm(x)
        A[sample.int(x,y)]<-NA
        A}))
    sample
}

#x is 10, y is 3 and z is 4
