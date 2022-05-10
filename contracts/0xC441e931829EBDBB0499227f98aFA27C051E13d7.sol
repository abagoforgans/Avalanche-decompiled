contract main {




// =====================  Runtime code  =====================


address owner;
address sub_45e690b0Address;
uint8 stor3; offset 160
uint128 stor3; offset 160
address sub_3607a875Address;
mapping of uint256 senderInfo;
mapping of uint256 claimed;
mapping of uint256 sub_8f98fda5;
array of struct steps;
array of struct sub_e81b74bc;

function sub_3607a875(?) payable {
    return sub_3607a875Address
}

function isInitialized() payable {
    return bool(uint8(stor3.field_160))
}

function sub_45e690b0(?) payable {
    return sub_45e690b0Address
}

function steps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < steps.length
    return steps[arg1].field_0
}

function owner() payable {
    return owner
}

function sub_8f98fda5(?) payable {
    require calldata.size - 4 >= 32
    return sub_8f98fda5[arg1]
}

function senderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return senderInfo[arg1]
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimed[arg1]
}

function sub_e81b74bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e81b74bc.length
    return sub_e81b74bc[arg1].field_0
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_45e690b0Address = arg1
    sub_3607a875Address = arg2
    Mask(96, 0, stor3.field_160) = 1
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

function getSteps() payable {
    if not steps.length:
        mem[(32 * steps.length) + 128] = 32
        mem[(32 * steps.length) + 160] = steps.length
        mem[(32 * steps.length) + 192 len floor32(steps.length)] = mem[128 len floor32(steps.length)]
        return memory
          from (32 * steps.length) + 128
           len (96 * steps.length) + 64
    mem[128] = uint256(steps.field_0)
    idx = 128
    s = 0
    while (32 * steps.length) + 96 > idx:
        mem[idx + 32] = steps[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * steps.length) + 192 len floor32(steps.length)] = mem[128 len floor32(steps.length)]
    return Array(len=steps.length, data=mem[128 len floor32(steps.length)], mem[(32 * steps.length) + floor32(steps.length) + 192 len (32 * steps.length) - floor32(steps.length)]), 
}

function available(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require 0 < steps.length
    if arg1 < uint256(steps.field_0):
        return 0
    idx = steps.length
    s = 0
    while idx > 0:
        require idx - 1 < steps.length
        mem[0] = 7
        if arg3 >= steps[idx].field_0:
            require idx - 1 < sub_e81b74bc.length
            mem[0] = 8
        else:
            if arg1 >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
                idx = idx - 1
                s = s + sub_e81b74bc[idx].field_0
                continue 
            if arg3 >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
        idx = idx - 1
        s = s
        continue 
    require steps.length - 1 < steps.length
    if arg1 <= steps[steps.length].field_0:
        return (100 * arg2 / 100 * s / 100)
    return arg2
}

function sub_d8f11622(?) payable {
    if not sub_e81b74bc.length:
        mem[(32 * sub_e81b74bc.length) + 128] = 32
        mem[(32 * sub_e81b74bc.length) + 160] = sub_e81b74bc.length
        mem[(32 * sub_e81b74bc.length) + 192 len floor32(sub_e81b74bc.length)] = mem[128 len floor32(sub_e81b74bc.length)]
        return memory
          from (32 * sub_e81b74bc.length) + 128
           len (96 * sub_e81b74bc.length) + 64
    mem[128] = uint256(sub_e81b74bc.field_0)
    idx = 128
    s = 0
    while (32 * sub_e81b74bc.length) + 96 > idx:
        mem[idx + 32] = sub_e81b74bc[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e81b74bc.length) + 192 len floor32(sub_e81b74bc.length)] = mem[128 len floor32(sub_e81b74bc.length)]
    return Array(len=sub_e81b74bc.length, data=mem[128 len floor32(sub_e81b74bc.length)], mem[(32 * sub_e81b74bc.length) + floor32(sub_e81b74bc.length) + 192 len (32 * sub_e81b74bc.length) - floor32(sub_e81b74bc.length)]), 
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require steps.length - 1 < steps.length
    if block.timestamp <= steps[steps.length].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734d6967726174696f6e206f662061454e49474d20686173206e6f7420656e6465,
                    mem[197 len 31]
    require ext_code.size(sub_45e690b0Address)
    staticcall sub_45e690b0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_45e690b0Address)
    call sub_45e690b0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_3607a875Address)
    staticcall sub_3607a875Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < steps.length
    if block.timestamp < uint256(steps.field_0):
        return 0
    idx = steps.length
    s = 0
    while idx > 0:
        require idx - 1 < steps.length
        mem[0] = 7
        if sub_8f98fda5[address(arg1)] >= steps[idx].field_0:
            require idx - 1 < sub_e81b74bc.length
            mem[0] = 8
        else:
            if block.timestamp >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
                idx = idx - 1
                s = s + sub_e81b74bc[idx].field_0
                continue 
            if sub_8f98fda5[address(arg1)] >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
        idx = idx - 1
        s = s
        continue 
    require steps.length - 1 < steps.length
    if block.timestamp <= steps[steps.length].field_0:
        return (100 * ext_call.return_data[0] / 100 * s / 100)
    return ext_call.return_data[0]
}

function sub_50b1c943(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    steps.length = 0
    idx = 0
    while steps.length > idx:
        steps[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_e81b74bc.length = 0
    idx = 0
    while sub_e81b74bc.length > idx:
        sub_e81b74bc[idx].field_0 = 0
        idx = idx + 1
        continue 
    steps.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while steps.length > idx:
            steps[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            steps[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while steps.length > idx:
            steps[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_e81b74bc.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_e81b74bc.length > idx:
            sub_e81b74bc[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_e81b74bc[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_e81b74bc.length > idx:
            sub_e81b74bc[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function migrate() payable {
    require ext_code.size(sub_3607a875Address)
    staticcall sub_3607a875Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < steps.length
    if block.timestamp < uint256(steps.field_0):
        revert with 0, 'No available tokens to claim.'
    idx = steps.length
    s = 0
    while idx > 0:
        require idx - 1 < steps.length
        mem[0] = 7
        if sub_8f98fda5[address(msg.sender)] >= steps[idx].field_0:
            require idx - 1 < sub_e81b74bc.length
            mem[0] = 8
        else:
            if block.timestamp >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
                idx = idx - 1
                s = s + sub_e81b74bc[idx].field_0
                continue 
            if sub_8f98fda5[address(msg.sender)] >= steps[idx].field_0:
                require idx - 1 < sub_e81b74bc.length
                mem[0] = 8
        idx = idx - 1
        s = s
        continue 
    require steps.length - 1 < steps.length
    if block.timestamp <= steps[steps.length].field_0:
        if 100 * ext_call.return_data[0] / 100 * s / 100 <= 0:
            revert with 0, 'No available tokens to claim.'
        require ext_code.size(sub_3607a875Address)
        staticcall sub_3607a875Address.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 100 * ext_call.return_data[0] / 100 * s / 100:
            revert with 0, 'Base token allowance too low.'
        require ext_code.size(sub_3607a875Address)
        call sub_3607a875Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 100 * ext_call.return_data[0] / 100 * s / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8f98fda5[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_45e690b0Address)
        call sub_45e690b0Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 100 * ext_call.return_data[0] / 100 * s / 100
    else:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No available tokens to claim.'
        require ext_code.size(sub_3607a875Address)
        staticcall sub_3607a875Address.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'Base token allowance too low.'
        require ext_code.size(sub_3607a875Address)
        call sub_3607a875Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8f98fda5[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_45e690b0Address)
        call sub_45e690b0Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
