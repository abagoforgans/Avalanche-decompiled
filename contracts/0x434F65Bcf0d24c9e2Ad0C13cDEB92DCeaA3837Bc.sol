contract main {




// =====================  Runtime code  =====================


#
#  - sub_46faa56e(?)
#  - sub_66bfce47(?)
#  - sub_ad884309(?)
#
uint256 stor0;

function _fallback() payable {
    revert
}

function sub_759f1d93(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != 0xe7fa295203fd6522610e0409694c8a65ee2670ac:
        if msg.sender != 0x8a35add672963f5d23b7bab88e4f67a30172dec1:
            if msg.sender != 0x585845b853f6a37b159bd8dc98bd92f732c84716:
                revert with 0, 'onlyMe'
    stor0 = arg1
}

function sub_0e8af9b7(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if arg1 > stor0:
        require ext_code.size(0x85682716f61a72bf8c573fbaf88cca68c60e99b)
        call 0x085682716f61a72bf8c573fbaf88cca68c60e99b.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args address(this.address), 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, arg1, 128, 32, bool(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[164] = 2
        mem[196] = 0
        mem[228] = 0xa36938fdd0b6caa182758cfc60eb2aac5182d57a
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args 0, 664636784, arg1, 2, 0, 0xa36938fdd0b6caa182758cfc60eb2aac5182d57a
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 > !arg1:
            revert with 'NH{q', 17
        if not arg2:
            mem[100] = 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7
            mem[132] = arg1
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 100] = 3
            mem[ceil32(return_data.size) + 132] = 2
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7)
            call 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 3, 2, arg1, 0, block.timestamp
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
            staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
            mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
            call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeCanonicalForOld(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
            staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 100] = 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f
            mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
            call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f, ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 100] = 1
            mem[(8 * ceil32(return_data.size)) + 132] = 0
            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 196] = arg1 + 1
            mem[(8 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(0xa0be4f05e37617138ec212d4fb0cd2a8778a535f)
            call 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 1, 0, ext_call.return_data[0], arg1 + 1, block.timestamp
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 100] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
            mem[(11 * ceil32(return_data.size)) + 132] = arg1
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, arg1, 2, 0xa36938fdd0b6caa182758cfc60eb2aac5182d57a
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg1:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + 132] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(12 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - arg1
            mem[(12 * ceil32(return_data.size)) + 96] = 68
            mem[(12 * ceil32(return_data.size)) + 132 len 28] = 0x585845b853f6a37b159bd8dc98bd92f7
            mem[(12 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + 196] = 32
            mem[(12 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0
            mem[(12 * ceil32(return_data.size)) + 328] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg1) >> 32 == bool(0, Mask(224, 32, arg1) >> 32)
                    if not 0, Mask(224, 32, arg1) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 292] == bool(mem[(12 * ceil32(return_data.size)) + 292])
                    if not mem[(12 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[100] = 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f
            mem[132] = arg1
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f, arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = 1
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(0xa0be4f05e37617138ec212d4fb0cd2a8778a535f)
            call 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 1, arg1, 0, block.timestamp
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
            staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
            mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
            call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
            mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
            call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeOldForCanonical(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
            staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 100] = 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7
            mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
            call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7, ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 100] = 2
            mem[(10 * ceil32(return_data.size)) + 132] = 3
            mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 196] = arg1 + 1
            mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7)
            call 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2, 3, ext_call.return_data[0], arg1 + 1, block.timestamp
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(12 * ceil32(return_data.size)) + 100] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
            mem[(12 * ceil32(return_data.size)) + 132] = arg1
            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, arg1, 2, 0xa36938fdd0b6caa182758cfc60eb2aac5182d57a
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg1:
                revert with 'NH{q', 17
            mem[(13 * ceil32(return_data.size)) + 132] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(13 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - arg1
            mem[(13 * ceil32(return_data.size)) + 96] = 68
            mem[(13 * ceil32(return_data.size)) + 132 len 28] = 0x585845b853f6a37b159bd8dc98bd92f7
            mem[(13 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(13 * ceil32(return_data.size)) + 196] = 32
            mem[(13 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(13 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0
            mem[(13 * ceil32(return_data.size)) + 328] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), 0x585845b853f6a37b159bd8dc, 0, ext_call.return_data[0] - arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg1) >> 32 == bool(0, Mask(224, 32, arg1) >> 32)
                    if not 0, Mask(224, 32, arg1) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(13 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(13 * ceil32(return_data.size)) + 292] == bool(mem[(13 * ceil32(return_data.size)) + 292])
                    if not mem[(13 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if arg3 > !arg4:
        revert with 'NH{q', 17
    require arg5.length >= 32
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    if not cd[(arg5 + 36)]:
        mem[100] = 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7
        mem[132] = arg3
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 3
        mem[ceil32(return_data.size) + 132] = 2
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7)
        call 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 3, 2, arg3, 0, block.timestamp
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
        staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
        call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeCanonicalForOld(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
        staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 100] = 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
        call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f, ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 100] = 1
        mem[(8 * ceil32(return_data.size)) + 132] = 0
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 196] = arg3 + arg4
        mem[(8 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(0xa0be4f05e37617138ec212d4fb0cd2a8778a535f)
        call 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 1, 0, ext_call.return_data[0], arg3 + arg4, block.timestamp
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(11 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(11 * ceil32(return_data.size)) + 164] = arg3 + arg4
        mem[(11 * ceil32(return_data.size)) + 96] = 68
        mem[(11 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(11 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(11 * ceil32(return_data.size)) + 196] = 32
        mem[(11 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
            revert with 0, 'Address: call to non-contract'
        mem[(11 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0
        mem[(11 * ceil32(return_data.size)) + 328] = 0
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[(11 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(11 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] - arg3 - arg4
            mem[(11 * ceil32(return_data.size)) + 260] = 68
            mem[(11 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(11 * ceil32(return_data.size)) + 360] = 32
            mem[(11 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(11 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
            mem[(11 * ceil32(return_data.size)) + 492] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                    if not 0, Mask(224, 32, arg3) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(11 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(11 * ceil32(return_data.size)) + 456] == bool(mem[(11 * ceil32(return_data.size)) + 456])
                    if not mem[(11 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(11 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(11 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(11 * ceil32(return_data.size)) + 292] == bool(mem[(11 * ceil32(return_data.size)) + 292])
                if not mem[(11 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - arg3 - arg4
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                    if not 0, Mask(224, 32, arg3) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(14 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(14 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[100] = 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f
        mem[132] = arg3
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = 1
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(0xa0be4f05e37617138ec212d4fb0cd2a8778a535f)
        call 0xa0be4f05e37617138ec212d4fb0cd2a8778a535f.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 1, arg3, 0, block.timestamp
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
        staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
        call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
        call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeOldForCanonical(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
        staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7
        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
        call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7, ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 100] = 2
        mem[(10 * ceil32(return_data.size)) + 132] = 3
        mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 196] = arg3 + arg4
        mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7)
        call 0x8c3c1c6f971c01481150ca7942bd2bbb9bc27bc7.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 2, 3, ext_call.return_data[0], arg3 + arg4, block.timestamp
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(11 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(12 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(12 * ceil32(return_data.size)) + 164] = arg3 + arg4
        mem[(12 * ceil32(return_data.size)) + 96] = 68
        mem[(12 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(12 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(12 * ceil32(return_data.size)) + 196] = 32
        mem[(12 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
            revert with 0, 'Address: call to non-contract'
        mem[(12 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0
        mem[(12 * ceil32(return_data.size)) + 328] = 0
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3 + arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + 296] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(12 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] - arg3 - arg4
            mem[(12 * ceil32(return_data.size)) + 260] = 68
            mem[(12 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + 360] = 32
            mem[(12 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 424 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
            mem[(12 * ceil32(return_data.size)) + 492] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                    if not 0, Mask(224, 32, arg3) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 456] == bool(mem[(12 * ceil32(return_data.size)) + 456])
                    if not mem[(12 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(12 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(12 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(12 * ceil32(return_data.size)) + 292] == bool(mem[(12 * ceil32(return_data.size)) + 292])
                if not mem[(12 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - arg3 - arg4
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
               funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0] - arg3 - arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                    if not 0, Mask(224, 32, arg3) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(15 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(15 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
