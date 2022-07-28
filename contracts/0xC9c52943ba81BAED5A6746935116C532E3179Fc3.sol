contract main {




// =====================  Runtime code  =====================


#
#  - sub_54bf3dfe(?)
#  - _fallback()
#
const wethAddress = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address owner;
array of struct sub_b55c675b;
address sub_54d72fb9Address;
address uniRouterAddress;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function sub_54d72fb9(?) {
    return sub_54d72fb9Address
}

function owner() {
    return owner
}

function uniRouter() {
    return uniRouterAddress
}

function sub_b55c675b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b55c675b.length
    return sub_b55c675b[arg1].field_0, sub_b55c675b[arg1].field_256, bool(sub_b55c675b[arg1].field_416)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8fbfe542(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_b55c675b.length:
        revert with 0, 'Zap::removeZap: Invalid zapId'
    sub_b55c675b[arg1].field_416 = 1
    emit 0xd9ced440: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d85972d9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Zap::addZap: Invalid address'
    sub_b55c675b.length++
    sub_b55c675b[sub_b55c675b.length].field_0 = arg2
    stor4057[stor2.length].field_0 = address(arg1)
    stor4057[stor2.length].field_160 = 0
    if sub_b55c675b.length < 1:
        revert with 0, 17
    emit 0xdaede706: sub_b55c675b.length - 1, address(arg1), arg2
    return (sub_b55c675b.length - 1)
}



}
