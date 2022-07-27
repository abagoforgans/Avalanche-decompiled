contract main {




// =====================  Runtime code  =====================


#
#  - sub_2aa0db05(?)
#
mapping of struct sub_b46631ce;
address sub_af53dae5Address;
array of address stor2;
address owner;

function owner() {
    return owner
}

function sub_a44c03e7(?) {
    return stor2.length
}

function sub_af53dae5(?) {
    return sub_af53dae5Address
}

function sub_b46631ce(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b46631ce[address(arg1)].field_0, sub_b46631ce[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function sub_6f390486(?) {
    require calldata.size - 4 >= 32
    if arg1 > 20:
        return 'multisender-over20-ppp-0d'
    return 'multisender-notover20-ppp-0d'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3fd53ca0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_af53dae5Address = address(arg1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Finance: insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0x6502ab3c: owner
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Address: insufficient balance'
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x3143df48: owner, arg1
}

function sub_b30f2d6b(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if sub_b46631ce[mem[(32 * idx) + 140 len 20]].field_0 != 0:
            if sub_b46631ce[mem[(32 * idx) + 140 len 20]].field_256 > !cd[36]:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            sub_b46631ce[mem[(32 * idx) + 140 len 20]].field_256 += cd[36]
        else:
            sub_b46631ce[mem[(32 * idx) + 140 len 20]].field_0 = block.timestamp
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor2.length++
            stor2[stor2.length] = mem[(32 * idx) + 140 len 20]
            if block.timestamp > !cd[36]:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            sub_b46631ce[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp + cd[36]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a15447bc(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require ext_code.size(sub_af53dae5Address)
    call sub_af53dae5Address.0xc7497b0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 384 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    if ext_call.return_data[32] != 0x6d756c746973656e646572000000000000000000000000000000000000000000:
        revert with 0, 'MultiSenderV1: invalid skuId'
    require ext_code.size(sub_af53dae5Address)
    call sub_af53dae5Address.0x2b8f72ed with:
       value msg.value wei
         gas gas_remaining wei
        args arg3, msg.sender, arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_b46631ce[address(arg4)].field_0:
        if sub_b46631ce[address(arg4)].field_0 > sub_b46631ce[address(arg4)].field_256:
            sub_b46631ce[address(arg4)].field_256 = block.timestamp
        if sub_b46631ce[address(arg4)].field_256 > !ext_call.return_data[160]:
            revert with 0, 17
        sub_b46631ce[address(arg4)].field_256 += ext_call.return_data[160]
    else:
        sub_b46631ce[address(arg4)].field_0 = block.timestamp
        stor2.length++
        stor2[stor2.length] = address(arg4)
        if block.timestamp > !ext_call.return_data[160]:
            revert with 0, 17
        sub_b46631ce[address(arg4)].field_256 = block.timestamp + ext_call.return_data[160]
}



}
