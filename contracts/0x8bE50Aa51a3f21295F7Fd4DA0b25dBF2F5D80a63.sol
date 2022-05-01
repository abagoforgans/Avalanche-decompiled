contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const DISTRIBUTOR_ROLE = sha3(Mask(128, 128, 'DISTRIBUTOR_ROLE') >> 128)


address owner;
array of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function owner() {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function checkIsDistributor(address arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0:
        return bool(roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0)
    return (owner == arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function addNewDistributor(address arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if owner != msg.sender:
            revert with 0, 'You can't perform admin actions'
    if not roleAdmin[roleAdmin['DISTRIBUTOR_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0:
        roleAdmin['DISTRIBUTOR_ROLE'].field_0++
        roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'].field_0].field_0 = arg1
        roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'].field_0].field_160 = 0
        roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0 = roleAdmin['DISTRIBUTOR_ROLE'].field_0
        emit RoleGranted(sha3('DISTRIBUTOR_ROLE'), arg1, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_60ddf5b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 'DISTRIBUTOR_ROLE' << 128
    if not roleAdmin['DISTRIBUTOR_ROLE'][1][address(msg.sender)].field_0:
        if owner != msg.sender:
            revert with 0, 'Not an approved distributor'
    if arg1.length <= 0:
        revert with 0, 'Invalid users array'
    if arg1.length >= 256:
        revert with 0, 'Invalid users array'
    if arg1.length <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit ethShareCompleted((msg.value / arg1.length));
}

function revokeDistributor(address arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if owner != msg.sender:
            revert with 0, 'You can't perform admin actions'
    if not roleAdmin[roleAdmin['DISTRIBUTOR_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['DISTRIBUTOR_ROLE'].field_0 - 1 < roleAdmin['DISTRIBUTOR_ROLE'].field_0
        require roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['DISTRIBUTOR_ROLE'].field_0
        roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'].field_0].field_0
        roleAdmin['DISTRIBUTOR_ROLE'][1][roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'].field_0].field_0].field_0 = roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0
        require roleAdmin['DISTRIBUTOR_ROLE'].field_0
        roleAdmin['DISTRIBUTOR_ROLE'][roleAdmin['DISTRIBUTOR_ROLE'].field_0].field_0 = 0
        roleAdmin['DISTRIBUTOR_ROLE'].field_0--
        roleAdmin['DISTRIBUTOR_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('DISTRIBUTOR_ROLE'), arg1, msg.sender);
}

function sub_1a7aca99(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if roleAdmin['DISTRIBUTOR_ROLE'][1][address(msg.sender)].field_0:
        if arg1.length <= 0:
            revert with 0, 'Invalid users array'
        if arg1.length >= 256:
            revert with 0, 'Invalid users array'
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not enough token balance'
        if arg1.length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if this.address == msg.sender:
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], arg2 / arg1.length
            else:
                _75 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_75)
                mem[(32 * arg1.length) + 196] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_75), arg2 / arg1.length
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Not an approved distributor'
        if arg1.length <= 0:
            revert with 0, 'Invalid users array'
        if arg1.length >= 256:
            revert with 0, 'Invalid users array'
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not enough token balance'
        if arg1.length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if this.address == msg.sender:
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], arg2 / arg1.length
            else:
                _81 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_81)
                mem[(32 * arg1.length) + 196] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_81), arg2 / arg1.length
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    emit tokenShareCompleted(arg2, arg2 / arg1.length, msg.sender);
}

function sub_7cc4a117(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if roleAdmin['DISTRIBUTOR_ROLE'][1][address(msg.sender)].field_0:
        if arg1.length <= 0:
            revert with 0, 'Invalid users array'
        if arg1.length >= 256:
            revert with 0, 'Invalid users array'
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not enough token balance'
        if arg1.length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if this.address == this.address:
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], arg2 / arg1.length
            else:
                _75 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = this.address
                mem[(32 * arg1.length) + 164] = address(_75)
                mem[(32 * arg1.length) + 196] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(_75), arg2 / arg1.length
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Not an approved distributor'
        if arg1.length <= 0:
            revert with 0, 'Invalid users array'
        if arg1.length >= 256:
            revert with 0, 'Invalid users array'
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not enough token balance'
        if arg1.length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if this.address == this.address:
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], arg2 / arg1.length
            else:
                _81 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = this.address
                mem[(32 * arg1.length) + 164] = address(_81)
                mem[(32 * arg1.length) + 196] = arg2 / arg1.length
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(_81), arg2 / arg1.length
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    emit tokenShareCompleted(arg2, arg2 / arg1.length, arg3);
}



}
