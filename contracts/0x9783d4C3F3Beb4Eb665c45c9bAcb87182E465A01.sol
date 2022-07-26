contract main {




// =====================  Runtime code  =====================


address owner;
address sub_fddf3f73Address;
address stor2;
address stor3;
uint256 sub_a1832dbd;
uint8 stor5;
address tokenAddress; offset 8
uint256 stor5;
address stor6;
array of struct sub_98d3b592;
mapping of uint256 claimCount;

function enabled() {
    return bool(uint8(stor5.field_0))
}

function claimCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimCount[arg1]
}

function owner() {
    return owner
}

function sub_98d3b592(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    return sub_98d3b592[address(arg1)][arg2].field_512
}

function sub_a1832dbd(?) {
    return sub_a1832dbd
}

function sub_ab541a85(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_98d3b592[arg1].field_0
    return sub_98d3b592[arg1][arg2].field_0, 
           bool(sub_98d3b592[arg1][arg2].field_256),
           sub_98d3b592[arg1][arg2].field_512,
           sub_98d3b592[arg1][arg2].field_768,
           sub_98d3b592[arg1][arg2].field_1024,
           sub_98d3b592[arg1][arg2].field_1280
}

function token() {
    return tokenAddress
}

function sub_fddf3f73(?) {
    return sub_fddf3f73Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_188ddeff(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a1832dbd = arg1
}

function toggleEnabled() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor5.field_0) = not uint8(stor5.field_0) or Mask(248, 8, uint256(stor5.field_0))
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

function emergencyWithdrawETH() {
    if sub_fddf3f73Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EngineContract: caller is not emergency address'
    call sub_fddf3f73Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setEcosystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor3 = arg1
    call stor3.0x68b64d1f with:
         gas gas_remaining wei
        args 'NMAC'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor6 = ext_call.return_data[12 len 20]
    tokenAddress = ext_call.return_data[12 len 20]
}

function emergencyWithdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fddf3f73Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EngineContract: caller is not emergency address'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fddf3f73Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5b55232e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    call stor3.0x68b64d1f with:
         gas gas_remaining wei
        args 'SpecialStaking'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Vesting: this is only permitted to the staking contract'
    sub_98d3b592[address(arg1)].field_0++
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_0 = claimCount[address(arg1)]
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_256 = 0
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_512 = arg2
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_768 = 0
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_1024 = 0
    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_1280 = 0
    if claimCount[address(arg1)] == -1:
        revert with 0, 17
    claimCount[address(arg1)]++
    return claimCount[address(arg1)]
}

function sub_3c7aebd4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    if block.timestamp < sub_98d3b592[address(arg1)][arg2].field_768:
        revert with 0, 17
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    if block.timestamp - sub_98d3b592[address(arg1)][arg2].field_768 and sub_98d3b592[address(arg1)][arg2].field_1024 > -1 / block.timestamp - sub_98d3b592[address(arg1)][arg2].field_768:
        revert with 0, 17
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    if sub_98d3b592[address(arg1)][arg2].field_512 < sub_98d3b592[address(arg1)][arg2].field_1280:
        revert with 0, 17
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    if (block.timestamp * sub_98d3b592[address(arg1)][arg2].field_1024) - (sub_98d3b592[address(arg1)][arg2].field_768 * sub_98d3b592[address(arg1)][arg2].field_1024) < sub_98d3b592[address(arg1)][arg2].field_512 - sub_98d3b592[address(arg1)][arg2].field_1280:
        if sub_98d3b592[address(arg1)][arg2].field_256:
            return ((block.timestamp * sub_98d3b592[address(arg1)][arg2].field_1024) - (sub_98d3b592[address(arg1)][arg2].field_768 * sub_98d3b592[address(arg1)][arg2].field_1024))
    else:
        if sub_98d3b592[address(arg1)][arg2].field_512 < sub_98d3b592[address(arg1)][arg2].field_1280:
            revert with 0, 17
        if arg2 >= sub_98d3b592[address(arg1)].field_0:
            revert with 0, 50
        if sub_98d3b592[address(arg1)][arg2].field_256:
            return (sub_98d3b592[address(arg1)][arg2].field_512 - sub_98d3b592[address(arg1)][arg2].field_1280)
    ('iszero', ('field', 256, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_98d3b592', 7))))))
    if arg2 >= sub_98d3b592[address(arg1)].field_0:
        revert with 0, 50
    return (sub_98d3b592[address(arg1)][arg2].field_512 / 10)
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_0):
        revert with 0, 'Vesting: claims are not enabled'
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if block.timestamp < sub_98d3b592[address(msg.sender)][arg1].field_768:
        revert with 0, 17
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if block.timestamp - sub_98d3b592[address(msg.sender)][arg1].field_768 and sub_98d3b592[address(msg.sender)][arg1].field_1024 > -1 / block.timestamp - sub_98d3b592[address(msg.sender)][arg1].field_768:
        revert with 0, 17
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if sub_98d3b592[address(msg.sender)][arg1].field_512 < sub_98d3b592[address(msg.sender)][arg1].field_1280:
        revert with 0, 17
    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
        revert with 0, 50
    if (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024) < sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280:
        if sub_98d3b592[address(msg.sender)][arg1].field_256:
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_256:
                if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: there are no more tokens to claim'
            else:
                sub_98d3b592[msg.sender][arg1].field_256 = 1
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1280 = 0
                if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                    revert with 0, 17
                if not 10 * sub_a1832dbd:
                    revert with 0, 18
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_1280 > !((block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)):
                revert with 0, 17
            sub_98d3b592[msg.sender][arg1].field_1280 = sub_98d3b592[msg.sender][arg1].field_1280 + (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claimed(msg.sender, (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024));
        else:
            if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_256:
                if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: there are no more tokens to claim'
            else:
                sub_98d3b592[msg.sender][arg1].field_256 = 1
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1280 = 0
                if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                    revert with 0, 17
                if not 10 * sub_a1832dbd:
                    revert with 0, 18
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 / 10):
                revert with 0, 17
            sub_98d3b592[msg.sender][arg1].field_1280 += sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10);
    else:
        if sub_98d3b592[address(msg.sender)][arg1].field_512 < sub_98d3b592[address(msg.sender)][arg1].field_1280:
            revert with 0, 17
        if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
            revert with 0, 50
        if sub_98d3b592[address(msg.sender)][arg1].field_256:
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_256:
                if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: there are no more tokens to claim'
            else:
                sub_98d3b592[msg.sender][arg1].field_256 = 1
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1280 = 0
                if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                    revert with 0, 17
                if not 10 * sub_a1832dbd:
                    revert with 0, 18
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280):
                revert with 0, 17
            sub_98d3b592[msg.sender][arg1].field_1280 = sub_98d3b592[msg.sender][arg1].field_1280 + sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280);
        else:
            if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_256:
                if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting: there are no more tokens to claim'
            else:
                sub_98d3b592[msg.sender][arg1].field_256 = 1
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1280 = 0
                if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                    revert with 0, 17
                if not 10 * sub_a1832dbd:
                    revert with 0, 18
                if arg1 >= sub_98d3b592[msg.sender].field_0:
                    revert with 0, 50
                sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 / 10):
                revert with 0, 17
            sub_98d3b592[msg.sender][arg1].field_1280 += sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
            if arg1 >= sub_98d3b592[msg.sender].field_0:
                revert with 0, 50
            sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10);
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x84536017(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa8e01b28(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x84536017(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if sub_fddf3f73Address != msg.sender:
                        revert with 0, 'EngineContract: caller is not emergency address'
                    call sub_fddf3f73Address with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x98d3b592(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xa1832dbd(?????):
                    require not msg.value
                    return sub_a1832dbd
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if arg2 >= sub_98d3b592[address(arg1)].field_0:
                    revert with 0, 50
                return sub_98d3b592[address(arg1)][arg2].field_512
            if uint32(call.func_hash) >> 224 != unknown_0xa8e01b28(?????):
                if unknown_0xab541a85(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 < sub_98d3b592[arg1].field_0
                    return sub_98d3b592[arg1][arg2].field_0, 
                           bool(sub_98d3b592[arg1][arg2].field_256),
                           sub_98d3b592[arg1][arg2].field_512,
                           sub_98d3b592[arg1][arg2].field_768,
                           sub_98d3b592[arg1][arg2].field_1024,
                           sub_98d3b592[arg1][arg2].field_1280
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xfddf3f73(?????):
                    require not msg.value
                    return sub_fddf3f73Address
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
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor2 = address(arg1)
                stor3 = address(arg1)
                call stor3.0x68b64d1f with:
                     gas gas_remaining wei
                    args 'NMAC'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor6 = ext_call.return_data[12 len 20]
                tokenAddress = ext_call.return_data[12 len 20]
        else:
            if unknown_0x379607f5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x188ddeff(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_a1832dbd = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x1af03203(?????):
                        if unknown_0x238dafe0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(uint8(stor5.field_0))
                        if unknown_0x3044b56c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            uint256(stor5.field_0) = not uint8(stor5.field_0) or Mask(248, 8, uint256(stor5.field_0))
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if sub_fddf3f73Address != msg.sender:
                            revert with 0, 'EngineContract: caller is not emergency address'
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_fddf3f73Address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x379607f5(?????):
                    if unknown_0x3c7aebd4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        if block.timestamp < sub_98d3b592[address(arg1)][arg2].field_768:
                            revert with 0, 17
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        if block.timestamp - sub_98d3b592[address(arg1)][arg2].field_768 and sub_98d3b592[address(arg1)][arg2].field_1024 > -1 / block.timestamp - sub_98d3b592[address(arg1)][arg2].field_768:
                            revert with 0, 17
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        if sub_98d3b592[address(arg1)][arg2].field_512 < sub_98d3b592[address(arg1)][arg2].field_1280:
                            revert with 0, 17
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        if (block.timestamp * sub_98d3b592[address(arg1)][arg2].field_1024) - (sub_98d3b592[address(arg1)][arg2].field_768 * sub_98d3b592[address(arg1)][arg2].field_1024) < sub_98d3b592[address(arg1)][arg2].field_512 - sub_98d3b592[address(arg1)][arg2].field_1280:
                            if sub_98d3b592[address(arg1)][arg2].field_256:
                                return ((block.timestamp * sub_98d3b592[address(arg1)][arg2].field_1024) - (sub_98d3b592[address(arg1)][arg2].field_768 * sub_98d3b592[address(arg1)][arg2].field_1024))
                        else:
                            if sub_98d3b592[address(arg1)][arg2].field_512 < sub_98d3b592[address(arg1)][arg2].field_1280:
                                revert with 0, 17
                            if arg2 >= sub_98d3b592[address(arg1)].field_0:
                                revert with 0, 50
                            if sub_98d3b592[address(arg1)][arg2].field_256:
                                return (sub_98d3b592[address(arg1)][arg2].field_512 - sub_98d3b592[address(arg1)][arg2].field_1280)
                        ('iszero', ('field', 256, ('stor', ('array', ('mul', 6, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_98d3b592', 7))))))
                        if arg2 >= sub_98d3b592[address(arg1)].field_0:
                            revert with 0, 50
                        return (sub_98d3b592[address(arg1)][arg2].field_512 / 10)
                    if uint32(call.func_hash) >> 224 != unknown_0x5b55232e(?????):
                        if unknown_0x69c12cb7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return claimCount[arg1]
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    call stor3.0x68b64d1f with:
                         gas gas_remaining wei
                        args 'SpecialStaking'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'Vesting: this is only permitted to the staking contract'
                    sub_98d3b592[address(arg1)].field_0++
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_0 = claimCount[address(arg1)]
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_256 = 0
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_512 = arg2
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_768 = 0
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_1024 = 0
                    sub_98d3b592[address(arg1)][sub_98d3b592[address(arg1)].field_0].field_1280 = 0
                    if claimCount[address(arg1)] == -1:
                        revert with 0, 17
                    claimCount[address(arg1)]++
                    return claimCount[address(arg1)]
                require not msg.value
                require calldata.size - 4 >= 32
                if not uint8(stor5.field_0):
                    revert with 0, 'Vesting: claims are not enabled'
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if block.timestamp < sub_98d3b592[address(msg.sender)][arg1].field_768:
                    revert with 0, 17
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if block.timestamp - sub_98d3b592[address(msg.sender)][arg1].field_768 and sub_98d3b592[address(msg.sender)][arg1].field_1024 > -1 / block.timestamp - sub_98d3b592[address(msg.sender)][arg1].field_768:
                    revert with 0, 17
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if sub_98d3b592[address(msg.sender)][arg1].field_512 < sub_98d3b592[address(msg.sender)][arg1].field_1280:
                    revert with 0, 17
                if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                    revert with 0, 50
                if (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024) < sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280:
                    if sub_98d3b592[address(msg.sender)][arg1].field_256:
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_256:
                            if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                                revert with 0, 'Vesting: there are no more tokens to claim'
                        else:
                            sub_98d3b592[msg.sender][arg1].field_256 = 1
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1280 = 0
                            if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
                            if not 10 * sub_a1832dbd:
                                revert with 0, 18
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_1280 > !((block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)):
                            revert with 0, 17
                        sub_98d3b592[msg.sender][arg1].field_1280 = sub_98d3b592[msg.sender][arg1].field_1280 + (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Claimed(msg.sender, (block.timestamp * sub_98d3b592[address(msg.sender)][arg1].field_1024) - (sub_98d3b592[address(msg.sender)][arg1].field_768 * sub_98d3b592[address(msg.sender)][arg1].field_1024));
                    else:
                        if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_256:
                            if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                                revert with 0, 'Vesting: there are no more tokens to claim'
                        else:
                            sub_98d3b592[msg.sender][arg1].field_256 = 1
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1280 = 0
                            if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
                            if not 10 * sub_a1832dbd:
                                revert with 0, 18
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 / 10):
                            revert with 0, 17
                        sub_98d3b592[msg.sender][arg1].field_1280 += sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10);
                else:
                    if sub_98d3b592[address(msg.sender)][arg1].field_512 < sub_98d3b592[address(msg.sender)][arg1].field_1280:
                        revert with 0, 17
                    if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                        revert with 0, 50
                    if sub_98d3b592[address(msg.sender)][arg1].field_256:
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_256:
                            if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                                revert with 0, 'Vesting: there are no more tokens to claim'
                        else:
                            sub_98d3b592[msg.sender][arg1].field_256 = 1
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1280 = 0
                            if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
                            if not 10 * sub_a1832dbd:
                                revert with 0, 18
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280):
                            revert with 0, 17
                        sub_98d3b592[msg.sender][arg1].field_1280 = sub_98d3b592[msg.sender][arg1].field_1280 + sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 - sub_98d3b592[address(msg.sender)][arg1].field_1280);
                    else:
                        if arg1 >= sub_98d3b592[address(msg.sender)].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_256:
                            if sub_98d3b592[msg.sender][arg1].field_1280 >= sub_98d3b592[address(msg.sender)][arg1].field_512:
                                revert with 0, 'Vesting: there are no more tokens to claim'
                        else:
                            sub_98d3b592[msg.sender][arg1].field_256 = 1
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1280 = 0
                            if sub_a1832dbd > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_98d3b592[address(msg.sender)][arg1].field_512 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                                revert with 0, 17
                            if not 10 * sub_a1832dbd:
                                revert with 0, 18
                            if arg1 >= sub_98d3b592[msg.sender].field_0:
                                revert with 0, 50
                            sub_98d3b592[msg.sender][arg1].field_1024 = 9 * sub_98d3b592[address(msg.sender)][arg1].field_512 / 10 * sub_a1832dbd
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        if sub_98d3b592[msg.sender][arg1].field_1280 > !(sub_98d3b592[address(msg.sender)][arg1].field_512 / 10):
                            revert with 0, 17
                        sub_98d3b592[msg.sender][arg1].field_1280 += sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
                        if arg1 >= sub_98d3b592[msg.sender].field_0:
                            revert with 0, 50
                        sub_98d3b592[msg.sender][arg1].field_768 = block.timestamp
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Claimed(msg.sender, sub_98d3b592[address(msg.sender)][arg1].field_512 / 10);
}



}
