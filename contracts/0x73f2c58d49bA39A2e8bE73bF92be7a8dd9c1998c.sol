contract main {




// =====================  Runtime code  =====================


#
#  - deactivateReserve(address arg1)
#  - freezeReserve(address arg1)
#  - disableBorrowingOnReserve(address arg1)
#  - sub_ab646186(?)
#  - activateReserve(address arg1)
#  - enableReserveStableRate(address arg1)
#  - enableBorrowingOnReserve(address arg1, bool arg2)
#  - unfreezeReserve(address arg1)
#  - disableReserveStableRate(address arg1)
#
uint256 stor0;
uint8 stor1;
address stor52;
uint32 stor53;
address stor53;
uint256 stor53;

function _fallback() payable {
    revert
}

function addLiquidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    call address(stor53).0x4c4e7f6f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPoolPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.getEmergencyAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    call address(stor53).0xbedb86fb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    call address(stor53).0xefb74400 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not stor1:
            stor1 = 1
            stor0 = 1
    stor52 = arg1
    require ext_code.size(arg1)
    staticcall arg1.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(stor53) = ext_call.return_data[12 len 20]
    if not stor1:
        stor1 = 0
}

function setReserveInterestRateStrategyAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    call address(stor53).0x1d2118f9 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveInterestRateStrategyChanged(arg2, arg1);
}

function setReserveFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    staticcall address(stor53).0xc44b11f7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
    if arg2 > 65535:
        revert with 0, '', 0
    require ext_code.size(address(stor53))
    call address(stor53).0xb8d29276 with:
         gas gas_remaining wei
        args address(arg1), arg2 << 64 or Mask(176, 80, ext_call.return_data[0]) or ext_call.return_data[24 len 8]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveFactorChanged(arg2, arg1);
}

function configureReserveAsCollateral(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 196] = arg1
    require ext_code.size(address(stor53))
    staticcall address(stor53).0xc44b11f7 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
    if arg2 > arg3:
        revert with 0, '', 0
    if arg3:
        if arg4 <= 10000:
            revert with 0, '', 0
        if arg3:
            if arg4:
                if arg3 > -5001 / arg4:
                    revert with 0, '', 0
                if (arg3 * arg4) + 5000 / 10000 > 10000:
                    revert with 0, '', 0
    else:
        if arg4:
            revert with 0, '', 0
        require ext_code.size(address(stor53))
        staticcall address(stor53).0x35ea6a75 with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 768 len 384] = ext_call.return_data[0 len 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        require bool((4 * ceil32(return_data.size)) + 1152 <= test266151307())
        require return_data.size >= 32
        require bool((4 * ceil32(return_data.size)) + 1184 <= test266151307())
        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 768] = (4 * ceil32(return_data.size)) + 1152
        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
        mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[80 len 16]
        mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[112 len 16]
        mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[144 len 16]
        mem[(4 * ceil32(return_data.size)) + 896] = ext_call.return_data[128]
        require ext_call.return_data[160] == ext_call.return_data[176 len 16]
        mem[(4 * ceil32(return_data.size)) + 928] = ext_call.return_data[160]
        require ext_call.return_data[192] == ext_call.return_data[219 len 5]
        mem[(4 * ceil32(return_data.size)) + 960] = ext_call.return_data[192]
        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
        mem[(4 * ceil32(return_data.size)) + 992] = ext_call.return_data[224]
        require ext_call.return_data[256] == ext_call.return_data[268 len 20]
        mem[(4 * ceil32(return_data.size)) + 1024] = ext_call.return_data[256]
        require ext_call.return_data[288] == ext_call.return_data[300 len 20]
        mem[(4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[288]
        require ext_call.return_data[320] == ext_call.return_data[332 len 20]
        mem[(4 * ceil32(return_data.size)) + 1088] = ext_call.return_data[320]
        require ext_call.return_data[352] == ext_call.return_data[383 len 1]
        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[352]
        mem[(4 * ceil32(return_data.size)) + 1188] = ext_call.return_data[236 len 20]
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[236 len 20]
        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '', 0
        if uint128(ext_call.return_data[96]):
            revert with 0, '', 0
    if arg2 > 65535:
        revert with 0, '', 0
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0 len 30]
    if arg3 > 65535:
        revert with 0, '', 0
    mem[(2 * ceil32(return_data.size)) + 192] = arg3 << 16 or Mask(224, 32, ext_call.return_data[0 len 30]) or mem[(2 * ceil32(return_data.size)) + 222 len 2]
    if arg4 > 65535:
        revert with 0, '', 0
    mem[(2 * ceil32(return_data.size)) + 192] = arg4 << 32 or Mask(208, 48, mem[(2 * ceil32(return_data.size)) + 192]) or mem[(2 * ceil32(return_data.size)) + 220 len 4]
    require ext_code.size(address(stor53))
    call address(stor53).0xb8d29276 with:
         gas gas_remaining wei
        args address(arg1), mem[(2 * ceil32(return_data.size)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CollateralConfigurationChanged(arg2, arg3, arg4, arg1);
}

function updateStableDebtToken(address arg1, address arg2, string arg3, string arg4, address arg5, bytes arg6) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 192
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0x35ea6a75 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 960 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0xc44b11f7 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((4 * ceil32(return_data.size)) + 1024 <= test266151307())
    require arg1.length == address(arg1.length)
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require cd[(arg1 + 68)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 68)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 68)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 68)] + 4)]
    require cd[(arg1 + 100)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 100)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 100)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 100)] + 4)]
    require cd[(arg1 + 164)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 164)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 164)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 164)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 1316] = cd[(arg1 + cd[(arg1 + 100)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 1348 len cd[(arg1 + cd[(arg1 + 100)] + 4)]] = call.data[arg1 + cd[(arg1 + 100)] + 36 len cd[(arg1 + cd[(arg1 + 100)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + cd[(arg1 + cd[(arg1 + 100)] + 4)] + 1348] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1348] = cd[(arg1 + cd[(arg1 + 164)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1380 len cd[(arg1 + cd[(arg1 + 164)] + 4)]] = call.data[arg1 + cd[(arg1 + 164)] + 36 len cd[(arg1 + cd[(arg1 + 164)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + cd[(arg1 + cd[(arg1 + 164)] + 4)] + 1380] = 0
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    require ext_code.size(address(ext_call.return_data[256]))
    call address(ext_call.return_data[256]) with:
         gas gas_remaining wei
        args address(cd[(arg1 + 132)]), 64, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + 324, initialize(address arg1, address arg2, address arg3, uint8 arg4, string arg5, string arg6, bytes arg7), Mask(224, 0, stor53), uint32(stor53), address(arg1.length), address(cd[(arg1 + 36)]), Mask(8, 48, ext_call.return_data[0]) << 200, 224, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 256, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 288, cd[(arg1 + cd[(arg1 + 68)] + 4)], call.data[arg1 + cd[(arg1 + 68)] + 36 len cd[(arg1 + cd[(arg1 + 68)] + 4)]], 0, mem[(4 * ceil32(return_data.size)) + cd[(arg1 + cd[(arg1 + 68)] + 4)] + 1348 len ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + -cd[(arg1 + cd[(arg1 + 68)] + 4)] + 32], call.data[arg1 + cd[(arg1 + 164)] + 36 len cd[(arg1 + cd[(arg1 + 164)] + 4)]], mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + cd[(arg1 + cd[(arg1 + 164)] + 4)] + 1380 len ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) - cd[(arg1 + cd[(arg1 + 164)] + 4)]], 0, address(cd[(arg1 + 132)]) << (8 * floor32(ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + 355) + -ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) - 328) - 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    require arg1.length == address(arg1.length)
    emit StableDebtTokenUpgraded(address(arg1.length), ext_call.return_data[268 len 20], address(cd[(arg1 + 132)]));
}

function updateVariableDebtToken(address arg1, address arg2, string arg3, string arg4, address arg5, bytes arg6) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 192
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0x35ea6a75 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 960 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0xc44b11f7 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((4 * ceil32(return_data.size)) + 1024 <= test266151307())
    require arg1.length == address(arg1.length)
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require cd[(arg1 + 68)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 68)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 68)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 68)] + 4)]
    require cd[(arg1 + 100)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 100)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 100)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 100)] + 4)]
    require cd[(arg1 + 164)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 164)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 164)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 164)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 1316] = cd[(arg1 + cd[(arg1 + 100)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 1348 len cd[(arg1 + cd[(arg1 + 100)] + 4)]] = call.data[arg1 + cd[(arg1 + 100)] + 36 len cd[(arg1 + cd[(arg1 + 100)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + cd[(arg1 + cd[(arg1 + 100)] + 4)] + 1348] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1348] = cd[(arg1 + cd[(arg1 + 164)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1380 len cd[(arg1 + cd[(arg1 + 164)] + 4)]] = call.data[arg1 + cd[(arg1 + 164)] + 36 len cd[(arg1 + cd[(arg1 + 164)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + cd[(arg1 + cd[(arg1 + 164)] + 4)] + 1380] = 0
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    require ext_code.size(address(ext_call.return_data[288]))
    call address(ext_call.return_data[288]) with:
         gas gas_remaining wei
        args address(cd[(arg1 + 132)]), 64, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + 324, initialize(address arg1, address arg2, address arg3, uint8 arg4, string arg5, string arg6, bytes arg7), Mask(224, 0, stor53), uint32(stor53), address(arg1.length), address(cd[(arg1 + 36)]), Mask(8, 48, ext_call.return_data[0]) << 200, 224, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + 256, ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 288, cd[(arg1 + cd[(arg1 + 68)] + 4)], call.data[arg1 + cd[(arg1 + 68)] + 36 len cd[(arg1 + cd[(arg1 + 68)] + 4)]], 0, mem[(4 * ceil32(return_data.size)) + cd[(arg1 + cd[(arg1 + 68)] + 4)] + 1348 len ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + -cd[(arg1 + cd[(arg1 + 68)] + 4)] + 32], call.data[arg1 + cd[(arg1 + 164)] + 36 len cd[(arg1 + cd[(arg1 + 164)] + 4)]], mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + cd[(arg1 + cd[(arg1 + 164)] + 4)] + 1380 len ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) - cd[(arg1 + cd[(arg1 + 164)] + 4)]], 0, address(cd[(arg1 + 132)]) << (8 * floor32(ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + 355) + -ceil32(cd[(arg1 + cd[(arg1 + 68)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) - 328) - 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    require arg1.length == address(arg1.length)
    emit VariableDebtTokenUpgraded(address(arg1.length), ext_call.return_data[300 len 20], address(cd[(arg1 + 132)]));
}

function updateAToken(address arg1, address arg2, address arg3, string arg4, string arg5, address arg6, bytes arg7) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 224
    require ext_code.size(stor52)
    staticcall stor52.getPoolAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0x35ea6a75 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 960 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require arg1.length == address(arg1.length)
    require ext_code.size(address(stor53))
    staticcall address(stor53).0xc44b11f7 with:
            gas gas_remaining wei
           args address(arg1.length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((4 * ceil32(return_data.size)) + 1024 <= test266151307())
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require arg1.length == address(arg1.length)
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 100)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 100)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 100)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 100)] + 4)]
    require cd[(arg1 + 132)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 132)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 132)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 132)] + 4)]
    require cd[(arg1 + 196)] < calldata.size + -arg1 - 35
    require cd[(arg1 + cd[(arg1 + 196)] + 4)] <= test266151307()
    require arg1 + cd[(arg1 + 196)] + 36 <= calldata.size - cd[(arg1 + cd[(arg1 + 196)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1348] = cd[(arg1 + cd[(arg1 + 132)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 1380 len cd[(arg1 + cd[(arg1 + 132)] + 4)]] = call.data[arg1 + cd[(arg1 + 132)] + 36 len cd[(arg1 + cd[(arg1 + 132)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + cd[(arg1 + cd[(arg1 + 132)] + 4)] + 1380] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + 1380] = cd[(arg1 + cd[(arg1 + 196)] + 4)]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + 1412 len cd[(arg1 + cd[(arg1 + 196)] + 4)]] = call.data[arg1 + cd[(arg1 + 196)] + 36 len cd[(arg1 + cd[(arg1 + 196)] + 4)]]
    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + cd[(arg1 + cd[(arg1 + 196)] + 4)] + 1412] = 0
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    require ext_code.size(address(ext_call.return_data[224]))
    call address(ext_call.return_data[224]) with:
         gas gas_remaining wei
        args address(cd[(arg1 + 164)]), 64, ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 196)] + 4)]) + 356, 406828051, Mask(224, 0, stor53), uint32(stor53), address(cd[(arg1 + 36)]), address(arg1.length), address(cd[(arg1 + 68)]), Mask(8, 48, ext_call.return_data[0]) << 200, 256, ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + 288, ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + 320, cd[(arg1 + cd[(arg1 + 100)] + 4)], call.data[arg1 + cd[(arg1 + 100)] + 36 len cd[(arg1 + cd[(arg1 + 100)] + 4)]], 0, mem[(4 * ceil32(return_data.size)) + cd[(arg1 + cd[(arg1 + 100)] + 4)] + 1380 len ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + -cd[(arg1 + cd[(arg1 + 100)] + 4)] + 32], call.data[arg1 + cd[(arg1 + 196)] + 36 len cd[(arg1 + cd[(arg1 + 196)] + 4)]], mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + cd[(arg1 + cd[(arg1 + 196)] + 4)] + 1412 len ceil32(cd[(arg1 + cd[(arg1 + 196)] + 4)]) - cd[(arg1 + cd[(arg1 + 196)] + 4)]], 0, address(cd[(arg1 + 164)]) << (8 * floor32(ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + ceil32(cd[(arg1 + cd[(arg1 + 196)] + 4)]) + 387) + -ceil32(cd[(arg1 + cd[(arg1 + 100)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 132)] + 4)]) + -ceil32(cd[(arg1 + cd[(arg1 + 196)] + 4)]) - 360) - 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    require arg1.length == address(arg1.length)
    emit ATokenUpgraded(address(arg1.length), ext_call.return_data[236 len 20], address(cd[(arg1 + 164)]));
}



}
