contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#
mapping of uint256 nonce;
array of struct quote;
address owner;

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function owner() {
    return owner
}

function quote() {
    return quote[0 len quote.length].field_0
}

function _fallback() payable {
    revert
}

function getQuote() {
    mem[128] = uint256(quote.field_0)
    idx = 128
    s = 0
    while quote.length + 96 > idx:
        mem[idx + 32] = quote[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=quote.length, data=mem[128 len quote.length]), owner
}

function setQuote(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    quote[].field_0 = Array(len=arg1.length, data=arg1[all])
    if this.address != msg.sender:
        owner = msg.sender
    else:
        mem[ceil32(arg1.length) + 128] = calldata.size
        mem[ceil32(arg1.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        owner = mem[ceil32(arg1.length) + calldata.size + 140 len 20]
}



}
