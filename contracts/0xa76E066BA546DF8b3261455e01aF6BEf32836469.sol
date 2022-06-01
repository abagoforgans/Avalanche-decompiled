contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
uint256 sub_58166926;
uint256 sub_6e10cbfd;
uint256 totalPrizePool;
address sub_eb47de10Address;
address mimAddress;
uint256 sub_daf3cb82;
uint256 sub_b563f72d;
mapping of uint256 sub_8b8828c7;
mapping of uint256 sub_4b2f7bde;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8

function totalPrizePool() {
    return totalPrizePool
}

function sub_4b2f7bde(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b2f7bde[arg1]
}

function sub_58166926(?) {
    return sub_58166926
}

function sub_6e10cbfd(?) {
    return sub_6e10cbfd
}

function sub_8b8828c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8b8828c7[arg1]
}

function owner() {
    return owner
}

function sub_a52c98b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function hasParticipated(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function sub_b563f72d(?) {
    return sub_b563f72d
}

function mimAddress() {
    return mimAddress
}

function sub_daf3cb82(?) {
    return sub_daf3cb82
}

function sub_eb47de10(?) {
    return sub_eb47de10Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_818dc275(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_6e10cbfd:
        revert with 0, 'Error, Token Game Not Ended'
    if sub_daf3cb82 > sub_b563f72d:
        uint8(stor13.field_0) = 0
    else:
        uint8(stor13.field_0) = 1
    Mask(248, 0, stor13.field_8) = 1
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

function sub_440a4f89(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(mimAddress)
    call mimAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer MIM from Contract to Treasury'
}

function sub_fcc2ec06(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if arg1 <= 0:
        revert with 0, 'The Amount Staked Cannot be 0'
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error, deposit must be >= 1.0 MIM'
    if block.timestamp <= sub_58166926:
        revert with 0, 'Error, Token Game Not Started'
    if block.timestamp > sub_6e10cbfd:
        revert with 0, 'Error, Token Game Ended'
    require ext_code.size(mimAddress)
    call mimAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer MIM to Treasury'
    if not arg2:
        if sub_4b2f7bde[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        sub_4b2f7bde[address(msg.sender)] += arg1
        if sub_b563f72d > -arg1 - 1:
            revert with 'NH{q', 17
        sub_b563f72d += arg1
    else:
        if sub_8b8828c7[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        sub_8b8828c7[address(msg.sender)] += arg1
        if sub_daf3cb82 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_daf3cb82 += arg1
    stor11[address(msg.sender)] = 1
    if totalPrizePool > -arg1 - 1:
        revert with 'NH{q', 17
    totalPrizePool += arg1
}

function sub_f2917d7b(?) payable {
    if block.timestamp <= sub_6e10cbfd:
        revert with 0, 'Error, Token Game Not Ended'
    if bool(uint8(stor13.field_8)) != 1:
        revert with 0, 'Game Result Not Concluded'
    if stor12[address(msg.sender)]:
        revert with 0, 'You have already claimed reward.'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if bool(uint8(stor13.field_0)) != 1:
        if not sub_b563f72d:
            revert with 'NH{q', 18
        if sub_4b2f7bde[address(msg.sender)] / sub_b563f72d and ext_call.return_data[0] > -1 / sub_4b2f7bde[address(msg.sender)] / sub_b563f72d:
            revert with 'NH{q', 17
        sub_4b2f7bde[address(msg.sender)] = 0
        if ext_call.return_data[0] < sub_4b2f7bde[address(msg.sender)] / sub_b563f72d * ext_call.return_data[0]:
            revert with 0, 'Prize pool has been evaporated. Be quick next time'
        if sub_4b2f7bde[address(msg.sender)] / sub_b563f72d * ext_call.return_data[0] <= 0:
            revert with 0, 'You do not have any prizes ready.'
        require ext_code.size(mimAddress)
        call mimAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_4b2f7bde[address(msg.sender)] / sub_b563f72d * ext_call.return_data[0]
    else:
        if not sub_daf3cb82:
            revert with 'NH{q', 18
        if sub_8b8828c7[address(msg.sender)] / sub_daf3cb82 and ext_call.return_data[0] > -1 / sub_8b8828c7[address(msg.sender)] / sub_daf3cb82:
            revert with 'NH{q', 17
        sub_8b8828c7[address(msg.sender)] = 0
        if ext_call.return_data[0] < sub_8b8828c7[address(msg.sender)] / sub_daf3cb82 * ext_call.return_data[0]:
            revert with 0, 'Prize pool has been evaporated. Be quick next time'
        if sub_8b8828c7[address(msg.sender)] / sub_daf3cb82 * ext_call.return_data[0] <= 0:
            revert with 0, 'You do not have any prizes ready.'
        require ext_code.size(mimAddress)
        call mimAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_8b8828c7[address(msg.sender)] / sub_daf3cb82 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer MIM from Contract to Treasury'
    stor12[address(msg.sender)] = 1
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
