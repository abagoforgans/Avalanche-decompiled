contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 vestingDuration;
uint256 deploymentTimestamp;
mapping of uint256 sub_5345f17a;

function vestingDuration() {
    return vestingDuration
}

function sub_5345f17a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5345f17a[arg1]
}

function owner() {
    return owner
}

function deploymentTimestamp() {
    return deploymentTimestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_760a2e8a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_5345f17a[address(arg1)]:
        if sub_5345f17a[address(arg1)] > !vestingDuration:
            revert with 0, 17
        return (sub_5345f17a[address(arg1)] + vestingDuration < block.timestamp)
    if deploymentTimestamp > !vestingDuration:
        revert with 0, 17
    return (deploymentTimestamp + vestingDuration < block.timestamp)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_5345f17a[address(arg1)]:
        if sub_5345f17a[address(arg1)] > !vestingDuration:
            revert with 0, 17
        if sub_5345f17a[address(arg1)] + vestingDuration >= block.timestamp:
            revert with 0, 'VESTING: not yet vested'
    else:
        if deploymentTimestamp > !vestingDuration:
            revert with 0, 17
        if deploymentTimestamp + vestingDuration >= block.timestamp:
            revert with 0, 'VESTING: not yet vested'
    sub_5345f17a[address(arg1)] = block.timestamp
    if not arg1:
        if eth.balance(this.address) < eth.balance(this.address) / 2:
            revert with 0, 'Address: insufficient balance'
        call owner with:
           value eth.balance(this.address) / 2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x760a2e8a(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x760a2e8a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if sub_5345f17a[address(arg1)]:
                    if sub_5345f17a[address(arg1)] > !vestingDuration:
                        revert with 0, 17
                    return (sub_5345f17a[address(arg1)] + vestingDuration < block.timestamp)
                if deploymentTimestamp > !vestingDuration:
                    revert with 0, 17
                return (deploymentTimestamp + vestingDuration < block.timestamp)
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xbfc12c05(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return deploymentTimestamp
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(arg1)
            emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x1514617e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return vestingDuration
            if uint32(call.func_hash) >> 224 != unknown_0x51cff8d9(?????):
                if unknown_0x5345f17a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_5345f17a[arg1]
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor1 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor1 = 2
                if sub_5345f17a[address(arg1)]:
                    if sub_5345f17a[address(arg1)] > !vestingDuration:
                        revert with 0, 17
                    if sub_5345f17a[address(arg1)] + vestingDuration >= block.timestamp:
                        revert with 0, 'VESTING: not yet vested'
                else:
                    if deploymentTimestamp > !vestingDuration:
                        revert with 0, 17
                    if deploymentTimestamp + vestingDuration >= block.timestamp:
                        revert with 0, 'VESTING: not yet vested'
                sub_5345f17a[address(arg1)] = block.timestamp
                if not address(arg1):
                    if eth.balance(this.address) < eth.balance(this.address) / 2:
                        revert with 0, 'Address: insufficient balance'
                    call owner with:
                       value eth.balance(this.address) / 2 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                stor1 = 1
}



}
