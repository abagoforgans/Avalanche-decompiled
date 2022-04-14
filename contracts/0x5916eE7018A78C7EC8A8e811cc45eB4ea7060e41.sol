contract main {




// =====================  Runtime code  =====================


address owner;
address kinsAddress;
address devaddr1;
address sub_f19987fcAddress;
address sub_5e671c0fAddress;
address sub_4979c1f1Address;
address stor6;

function devaddr1() {
    return devaddr1
}

function sub_4979c1f1(?) {
    return sub_4979c1f1Address
}

function sub_5e671c0f(?) {
    return sub_5e671c0fAddress
}

function owner() {
    return owner
}

function kins() {
    return kinsAddress
}

function sub_f19987fc(?) {
    return sub_f19987fcAddress
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_98af9dcb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                if sub_5e671c0fAddress != msg.sender:
                    if sub_4979c1f1Address != msg.sender:
                        if stor6 != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                                        mem[197 len 31]
    stor6 = arg1
}

function sub_f4b38263(?) payable {
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                if sub_5e671c0fAddress != msg.sender:
                    if sub_4979c1f1Address != msg.sender:
                        if stor6 != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                                        mem[197 len 31]
    if eth.balance(this.address) <= 0:
        revert with 0, 'Nothing to withdraw'
    call devaddr1 with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_f19987fcAddress with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    call sub_5e671c0fAddress with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    call sub_4979c1f1Address with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    emit 0x4c1c7a51 
}

function sub_2581f420(?) {
    if owner != msg.sender:
        if devaddr1 != msg.sender:
            if sub_f19987fcAddress != msg.sender:
                if sub_5e671c0fAddress != msg.sender:
                    if sub_4979c1f1Address != msg.sender:
                        if stor6 != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                                        mem[197 len 31]
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to distribute'
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    call kinsAddress.0xa9059cbb with:
         gas gas_remaining wei
        args devaddr1, ext_call.return_data[0] / 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    call kinsAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_f19987fcAddress, ext_call.return_data[0] / 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    call kinsAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_5e671c0fAddress, ext_call.return_data[0] / 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    call kinsAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_4979c1f1Address, ext_call.return_data[0] / 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x62b34b08 
}



}
