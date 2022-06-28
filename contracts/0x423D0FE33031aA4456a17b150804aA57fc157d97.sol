contract main {




// =====================  Runtime code  =====================


uint256 timelockLength;
uint256 sub_9461e673;
uint256 sub_176ee7e5;
uint256 sub_1e3f4cc2;
address nextImplementationAddress;
address stor3608;
address storB531;

function nextImplementation() {
    return nextImplementationAddress
}

function sub_176ee7e5(?) {
    return sub_176ee7e5
}

function sub_1e3f4cc2(?) {
    return sub_1e3f4cc2
}

function timelockLength() {
    return timelockLength
}

function sub_9461e673(?) {
    return sub_9461e673
}

function admin() {
    if msg.sender == storB531:
        return storB531
    delegate stor3608 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == storB531:
        return stor3608
    delegate stor3608 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender == storB531:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate stor3608 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_a469af1a(?) {
    require calldata.size - 4 >= 32
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    sub_1e3f4cc2 = arg1
    if block.timestamp > !timelockLength:
        revert with 'NH{q', 17
    sub_176ee7e5 = block.timestamp + timelockLength
}

function sub_3da239c7(?) {
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not sub_1e3f4cc2:
        revert with 0, 'Cannot set timelock to 0'
    if block.timestamp < sub_176ee7e5:
        revert with 0, 'Timelock not ended'
    timelockLength = sub_1e3f4cc2
    sub_1e3f4cc2 = 0
}

function sub_343851fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    nextImplementationAddress = address(arg1)
    if block.timestamp > !timelockLength:
        revert with 'NH{q', 17
    sub_9461e673 = block.timestamp + timelockLength
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    emit AdminChanged(storB531, arg1);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1967: new admin is the zero address'
    storB531 = arg1
}

function upgradeTo() {
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not nextImplementationAddress:
        revert with 0, 'Can't upgrade to address 0'
    if block.timestamp <= sub_9461e673:
        revert with 0, 'Timelock not finished'
    if not ext_code.size(nextImplementationAddress):
        revert with 0, 'ERC1967: new implementation is not a contract'
    stor3608 = nextImplementationAddress
    emit Upgraded(nextImplementationAddress);
    nextImplementationAddress = 0
}

function sub_9df4d08e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not nextImplementationAddress:
        revert with 0, 'Can't upgrade to address 0'
    if block.timestamp <= sub_9461e673:
        revert with 0, 'Timelock not finished'
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not ext_code.size(nextImplementationAddress):
        revert with 0, 'ERC1967: new implementation is not a contract'
    stor3608 = nextImplementationAddress
    emit Upgraded(nextImplementationAddress);
    mem[ceil32(arg1.length) + 128] = 39
    mem[ceil32(arg1.length) + 160 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
    if not ext_code.size(nextImplementationAddress):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 224] = 0
    delegate nextImplementationAddress.mem[ceil32(arg1.length) + 224 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 228 len arg1.length - 4]
    if not return_data.size:
        if delegate.return_code:
            nextImplementationAddress = 0
        if arg1.length:
            revert with arg1[all]
        mem[ceil32(arg1.length) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 228] = 32
        mem[ceil32(arg1.length) + 260] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 292 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 292] = 0
        revert with memory
          from ceil32(arg1.length) + 224
           len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 68
    mem[ceil32(arg1.length) + 224] = return_data.size
    mem[ceil32(arg1.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
        nextImplementationAddress = 0
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 229] = 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 261] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 293 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(return_data.size) + 293] = 0
    revert with memory
      from ceil32(arg1.length) + ceil32(return_data.size) + 225
       len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 68
}



}
