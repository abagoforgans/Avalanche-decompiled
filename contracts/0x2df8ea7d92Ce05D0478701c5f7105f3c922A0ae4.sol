contract main {




// =====================  Runtime code  =====================


const BUSD = 0x130966628846bfd36ff31a822705796e8cb8c18d

const WBNB = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint256 sub_ac736ae7;
address stor1;
array of struct sub_f3e7f4d0;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function sub_ac736ae7(?) payable {
    return sub_ac736ae7
}

function sub_f3e7f4d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 - 1 < sub_f3e7f4d0.length
    return sub_f3e7f4d0[arg1 - 1].field_256, sub_f3e7f4d0[arg1 - 1].field_0
}

function _fallback() payable {
    revert
}

function sub_34117f2a(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'caller is not the owner'
    if sub_ac736ae7 <= 0:
        revert with 0, 'route = 0'
    require arg1 - 1 < sub_f3e7f4d0.length
    sub_f3e7f4d0[arg1 - 1].field_256 = arg2
    if not arg2:
        require arg1 - 1 < sub_f3e7f4d0.length
        sub_f3e7f4d0[arg1 - 1].field_0 = 0
    else:
        require ext_code.size(arg2)
        staticcall arg2.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 - 1 < sub_f3e7f4d0.length
        sub_f3e7f4d0[arg1 - 1].field_0 = address(ext_call.return_data[0])
}

function addRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'caller is not the owner'
    if sub_ac736ae7:
        idx = 0
        while idx < sub_ac736ae7:
            require idx < sub_f3e7f4d0.length
            if sub_f3e7f4d0[idx].field_256 == arg1:
                revert with 0, 'address already exist'
            require idx < sub_f3e7f4d0.length
            mem[0] = 2
            if sub_f3e7f4d0[idx].field_256:
                idx = idx + 1
                continue 
            require idx < sub_f3e7f4d0.length
            sub_f3e7f4d0[idx].field_256 = arg1
            if not arg1:
                require idx < sub_f3e7f4d0.length
                sub_f3e7f4d0[idx].field_0 = 0
            else:
                require ext_code.size(arg1)
                staticcall arg1.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < sub_f3e7f4d0.length
                sub_f3e7f4d0[idx].field_0 = address(ext_call.return_data[0])
            return 1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f3e7f4d0.length++
    sub_f3e7f4d0[sub_f3e7f4d0.length].field_0 = address(ext_call.return_data[12 len 20])
    sub_f3e7f4d0[sub_f3e7f4d0.length].field_256 = arg1
    sub_ac736ae7++
    return 1
}

function sub_8c406d79(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'caller is not the owner'
    require not sub_ac736ae7
    mem[96] = 0xac736ae700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.mem[var16003 len 4] with:
            gas gas_remaining wei
           args mem[var16003 + 4 len var16004 - 4]
    mem[var16005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var20003 >= mem[var20002]:
    mem[96] = 0xf3e7f4d000000000000000000000000000000000000000000000000000000000
    mem[100] = var22001 + 1
    require ext_code.size(arg1)
    staticcall arg1.mem[var24003 len 4] with:
            gas gas_remaining wei
           args mem[var24003 + 4 len var24004 - 4]
    mem[var24005 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _106 = mem[var28002]
    _107 = mem[var28002 + 32]
    mem[64] = 160
    mem[96] = address(_106)
    mem[128] = address(_107)
    sub_f3e7f4d0.length++
    mem[0] = 2
    sub_f3e7f4d0[sub_f3e7f4d0.length].field_0 = address(_106)
    stor4057[stor2.length] = address(_107)
    sub_ac736ae7++
    mem[160] = 0xac736ae700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.mem[var32003 len 4] with:
            gas gas_remaining wei
           args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var36003 >= mem[var36002]:
    mem[160] = 0xf3e7f4d000000000000000000000000000000000000000000000000000000000
    mem[164] = var38001 + 1
    require ext_code.size(arg1)
    staticcall arg1.mem[var40003 len 4] with:
            gas gas_remaining wei
           args mem[var40003 + 4 len var40004 - 4]
    mem[var40005 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _214 = mem[var44002]
    _215 = mem[var44002 + 32]
    mem[64] = 224
    mem[160] = address(_214)
    mem[192] = address(_215)
    sub_f3e7f4d0.length++
    mem[0] = 2
    sub_f3e7f4d0[sub_f3e7f4d0.length].field_0 = address(_214)
    stor4057[stor2.length] = address(_215)
    sub_ac736ae7++
    mem[224] = 0xac736ae700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.mem[var48003 len 4] with:
            gas gas_remaining wei
           args mem[var48003 + 4 len var48004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}



}
