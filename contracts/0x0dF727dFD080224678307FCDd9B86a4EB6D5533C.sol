contract main {




// =====================  Runtime code  =====================


const getCurrentBlockNumber = block.number


address owner;
mapping of uint8 stor1;
uint32 stor2;
address sub_d56022d7Address;
array of address sub_5b5b9ea2;
uint8 stor4;
uint8 stor4; offset 8
address nifAddress; offset 16
address feeAddress;
uint256 poolFee;
uint256 sub_0384603a;
array of uint256 wildcards;
address wildcardErc1155Address;

function sub_0384603a(?) {
    return sub_0384603a
}

function poolFee() {
    return poolFee
}

function nifAddress() {
    return nifAddress
}

function feeAddress() {
    return feeAddress
}

function sub_5b5b9ea2(?) {
    require calldata.size - 4 >= 64
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    require arg2 < uint256(sub_5b5b9ea2[address(arg1)])
    return address(sub_5b5b9ea2[address(arg1)][arg2])
}

function sub_7bad68c7(?) {
    require calldata.size - 4 >= 32
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    return uint256(sub_5b5b9ea2[address(arg1)])
}

function owner() {
    return owner
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function wildcardErc1155Address() {
    return wildcardErc1155Address
}

function sub_d56022d7(?) {
    return address(sub_d56022d7Address)
}

function wildcards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wildcards.length
    return wildcards[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
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

function iHaveAnyWildcard() {
    idx = 0
    while idx < wildcards.length:
        mem[0] = 8
        mem[100] = msg.sender
        mem[132] = wildcards[idx]
        require ext_code.size(wildcardErc1155Address)
        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, wildcards[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_d7fb5cc1(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    address(sub_d56022d7Address) = arg1
}

function setCloned() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    uint8(stor4.field_8) = 1
}

function sub_60e0d7c8(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    sub_0384603a = arg1
}

function setPoolFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    poolFee = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    feeAddress = arg1
}

function setNifAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    nifAddress = arg1
}

function setWildcardErc1155Address(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    wildcardErc1155Address = arg1
}

function setWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    wildcards.length++
    wildcards[wildcards.length] = arg1
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor4.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65556e6966747947656e65736973206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[216 len 12]
    if uint8(stor4.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65556e6966747947656e65736973206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[216 len 12]
    uint8(stor4.field_0) = 1
    address(sub_d56022d7Address) = arg1
    owner = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if stor1[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
}

function removeWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x526f6c65733a206163636f756e7420697320746865207a65726f2061646472657300,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    require wildcards.length - 1 < wildcards.length
    idx = 0
    while idx < wildcards.length:
        mem[0] = 8
        if wildcards[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < wildcards.length
        wildcards[idx] = wildcards[wildcards.length]
        require wildcards.length - 1 < wildcards.length
        wildcards[wildcards.length] = 0
        wildcards.length--
        if wildcards.length > wildcards.length - 1:
            idx = wildcards.length + sha3(8) - 1
            while sha3(8) + wildcards.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function sub_3e7bdab9(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if uint8(stor4.field_8):
        revert with 0, 'eNot callable from clone'
    require ext_code.size(nifAddress)
    staticcall nifAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_0384603a:
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(sub_d56022d7Address), 0x5af43d82803e903d91602b57fd5bf3
        mem[ceil32(arg1.length) + 228] = arg2.length
        mem[ceil32(arg1.length) + 260 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + arg2.length + 260] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).init(string rg1, string rg2, address rg3) with:
             gas gas_remaining wei
            args 0, 96, ceil32(arg1.length) + 128, address(arg5), arg1.length, arg1[all], 0, mem[arg1.length + 260 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    else:
        idx = 0
        while idx < wildcards.length:
            mem[0] = 8
            mem[100] = msg.sender
            mem[132] = wildcards[idx]
            require ext_code.size(wildcardErc1155Address)
            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, wildcards[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                continue 
            create contract with 0 wei
                            code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(sub_d56022d7Address), 0x5af43d82803e903d91602b57fd5bf3
            mem[ceil32(arg1.length) + 228] = arg2.length
            mem[ceil32(arg1.length) + 260 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + arg2.length + 260] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).init(string rg1, string rg2, address rg3) with:
                 gas gas_remaining wei
                args 96, uint32(stor2), 0x5af43d82803e903d91602b57fd5bf3000000000000000000, address(arg5), arg1.length, arg1[all], 0, mem[arg1.length + 260 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x7362d9c8 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).addMinter(address rg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setContractURI(string rg1) with:
                 gas gas_remaining wei
                args Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setBaseMetadataURI(string rg1) with:
                 gas gas_remaining wei
                args Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x4c5a628c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).renounceMinter() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xf2fde38b with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(sub_5b5b9ea2[msg.sender])++
            address(sub_5b5b9ea2[msg.sender][uint256(sub_5b5b9ea2[msg.sender])]) = address(create.new_address)
            if ext_call.return_data[0] >= sub_0384603a:
                emit PoolCreated(0, msg.sender, address(create.new_address));
            else:
                idx = 0
                while idx < wildcards.length:
                    mem[0] = 8
                    mem[100] = msg.sender
                    mem[132] = wildcards[idx]
                    require ext_code.size(wildcardErc1155Address)
                    staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, wildcards[idx]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        idx = idx + 1
                        continue 
                    if ext_call.return_data[0] >= sub_0384603a:
                        emit PoolCreated(0, msg.sender, address(create.new_address));
                    else:
                        idx = 0
                        while idx < wildcards.length:
                            mem[0] = 8
                            mem[100] = msg.sender
                            mem[132] = wildcards[idx]
                            require ext_code.size(wildcardErc1155Address)
                            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, wildcards[idx]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            emit PoolCreated(0, msg.sender, address(create.new_address));
                        emit PoolCreated(poolFee, msg.sender, address(create.new_address));
                call feeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] >= sub_0384603a:
                    emit PoolCreated(0, msg.sender, address(create.new_address));
                else:
                    idx = 0
                    while idx < wildcards.length:
                        mem[0] = 8
                        mem[100] = msg.sender
                        mem[132] = wildcards[idx]
                        require ext_code.size(wildcardErc1155Address)
                        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args msg.sender, wildcards[idx]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            idx = idx + 1
                            continue 
                        emit PoolCreated(0, msg.sender, address(create.new_address));
                    emit PoolCreated(poolFee, msg.sender, address(create.new_address));
        if poolFee != msg.value:
            revert with 0, 'Invalid pool fee'
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(sub_d56022d7Address), 0x5af43d82803e903d91602b57fd5bf3
        mem[ceil32(arg1.length) + 228] = arg2.length
        mem[ceil32(arg1.length) + 260 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + arg2.length + 260] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).init(string rg1, string rg2, address rg3) with:
             gas gas_remaining wei
            args 96, uint32(stor2), 0x5af43d82803e903d91602b57fd5bf3000000000000000000, address(arg5), arg1.length, arg1[all], 0, mem[arg1.length + 260 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x7362d9c8 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addMinter(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setContractURI(string rg1) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setBaseMetadataURI(string rg1) with:
         gas gas_remaining wei
        args Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4c5a628c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).renounceMinter() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_5b5b9ea2[msg.sender])++
    address(sub_5b5b9ea2[msg.sender][uint256(sub_5b5b9ea2[msg.sender])]) = address(create.new_address)
    if ext_call.return_data[0] >= sub_0384603a:
        emit PoolCreated(0, msg.sender, address(create.new_address));
    else:
        idx = 0
        while idx < wildcards.length:
            mem[0] = 8
            mem[100] = msg.sender
            mem[132] = wildcards[idx]
            require ext_code.size(wildcardErc1155Address)
            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, wildcards[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                continue 
            if ext_call.return_data[0] >= sub_0384603a:
                emit PoolCreated(0, msg.sender, address(create.new_address));
            else:
                idx = 0
                while idx < wildcards.length:
                    mem[0] = 8
                    mem[100] = msg.sender
                    mem[132] = wildcards[idx]
                    require ext_code.size(wildcardErc1155Address)
                    staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, wildcards[idx]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        idx = idx + 1
                        continue 
                    emit PoolCreated(0, msg.sender, address(create.new_address));
                emit PoolCreated(poolFee, msg.sender, address(create.new_address));
        call feeAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] >= sub_0384603a:
            emit PoolCreated(0, msg.sender, address(create.new_address));
        else:
            idx = 0
            while idx < wildcards.length:
                mem[0] = 8
                mem[100] = msg.sender
                mem[132] = wildcards[idx]
                require ext_code.size(wildcardErc1155Address)
                staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, wildcards[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    idx = idx + 1
                    continue 
                emit PoolCreated(0, msg.sender, address(create.new_address));
            emit PoolCreated(poolFee, msg.sender, address(create.new_address));
}



}
