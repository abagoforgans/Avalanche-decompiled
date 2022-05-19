contract main {




// =====================  Runtime code  =====================


address nodeRewardManagementAddress;
address sub_ce27cdb2Address;

function nodeRewardManagement() payable {
    return nodeRewardManagementAddress
}

function sub_ce27cdb2(?) payable {
    return sub_ce27cdb2Address
}

function _fallback() payable {
    revert
}

function sub_1319e7e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_ce27cdb2Address = address(arg1)
    nodeRewardManagementAddress = address(arg1)
}

function sub_4b829735(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[64] = 160
    mem[96] = 10
    mem[128] = 'sldtechxyz'
    idx = 0
    while idx < arg2:
        mem[160] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[164] = address(arg1)
        mem[196] = 64
        mem[228] = mem[96]
        s = 0
        while s < mem[96]:
            mem[s + 260] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + 260] = 0
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args address(arg1), Array(len=mem[96], data=mem[260 len ceil32(mem[96])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
