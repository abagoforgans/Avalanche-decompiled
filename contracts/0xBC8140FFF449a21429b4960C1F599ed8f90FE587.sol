contract main {




// =====================  Runtime code  =====================


mapping of struct resolver;
mapping of uint8 stor1;

function resolver(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return resolver[arg1].field_256
}

function ttl(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return resolver[arg1].field_416
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function recordExists(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(resolver[arg1].field_0)
}

function _fallback() payable {
    revert
}

function owner(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if resolver[arg1].field_0 != this.address:
        return resolver[arg1].field_0
    else:
        return 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor1[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setTTL(bytes32 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    emit NewTTL(arg2, arg1);
    resolver[arg1].field_416 = arg2
}

function setOwner(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    resolver[arg1].field_0 = arg2
    emit Transfer(arg2, arg1);
}

function setResolver(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    emit NewResolver(arg2, arg1);
    resolver[arg1].field_256 = arg2
}

function setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    resolver[arg1][arg2].field_0 = arg3
    emit NewOwner(arg3, arg1, arg2);
    return sha3(arg1, arg2)
}

function setRecord(bytes32 arg1, address arg2, address arg3, uint64 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    resolver[arg1].field_0 = arg2
    emit Transfer(arg2, arg1);
    if resolver[arg1].field_256 != arg3:
        resolver[arg1].field_256 = arg3
        emit NewResolver(arg3, arg1);
    if resolver[arg1].field_416 != arg4:
        resolver[arg1].field_416 = arg4
        emit NewTTL(arg4, arg1);
}

function setSubnodeRecord(bytes32 arg1, bytes32 arg2, address arg3, address arg4, uint64 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if resolver[arg1].field_0 != msg.sender:
        require stor1[stor0[arg1].field_0][msg.sender]
    resolver[arg1][arg2].field_0 = arg3
    emit NewOwner(arg3, arg1, arg2);
    if resolver[arg1][arg2].field_256 != arg4:
        resolver[arg1][arg2].field_256 = arg4
        emit NewResolver(arg4, sha3(arg1, arg2));
    if resolver[arg1][arg2].field_416 != arg5:
        resolver[arg1][arg2].field_416 = arg5
        emit NewTTL(arg5, sha3(arg1, arg2));
}



}
