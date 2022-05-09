contract main {




// =====================  Runtime code  =====================


address owner;
address homeAddress;
mapping of uint32 replicaToDomain;
mapping of address domainToReplica;
mapping of uint8 stor4;

function watcherPermission(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][arg2 << 224])
}

function isReplica(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(replicaToDomain[address(arg1)])
}

function replicaToDomain(address arg1) payable {
    require calldata.size - 4 >= 32
    return replicaToDomain[arg1]
}

function owner() payable {
    return owner
}

function home() payable {
    return homeAddress
}

function domainToReplica(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return domainToReplica[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHome(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    homeAddress = arg1
}

function setWatcherPermission(address arg1, uint32 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)][arg2 << 224] = uint8(arg3)
    emit WatcherPermissionSet(address(arg1), arg3, arg2);
}

function localDomain() payable {
    require ext_code.size(homeAddress)
    staticcall homeAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[28 len 4]
}

function ownerUnenrollReplica(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    domainToReplica[stor2[address(arg1)]] = 0
    replicaToDomain[address(arg1)] = 0
    emit ReplicaUnenrolled(arg1, replicaToDomain[address(arg1)]);
}

function ownerEnrollReplica(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    domainToReplica[stor2[address(arg1)]] = 0
    replicaToDomain[address(arg1)] = 0
    emit ReplicaUnenrolled(arg1, replicaToDomain[address(arg1)]);
    replicaToDomain[address(arg1)] = arg2
    domainToReplica[arg2 << 224] = arg1
    emit ReplicaEnrolled(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unenrollReplica(uint32 arg1, bytes32 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not domainToReplica[arg1 << 224]:
        revert with 0, '!replica exists'
    require ext_code.size(domainToReplica[arg1 << 224])
    staticcall domainToReplica[arg1 << 224].0xdf034cd0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(arg2):
        revert with 0, '!current updater'
    require ext_code.size(domainToReplica[arg1 << 224])
    staticcall domainToReplica[arg1 << 224].homeDomainHash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 160] = ext_call.return_data[0]
    mem[ceil32(arg3.length) + 128] = 68
    if arg3.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x7345434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg3.length) + 422 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg3.length) + 422 len 30]
}



}
