contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getVaultInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == 1:
        require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
        if not arg1:
            staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.vaultOwner(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[96] = ext_call.return_data[12 len 20]
            require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
            staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.vaultDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
            staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.vaultCollateral(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
            staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.getEthPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 100 * 10^6 * ext_call.return_data[0]:
                return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not 100 * 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not 15 * 10^9 * ext_call.return_data[0] / 100:
                revert with 'NH{q', 18
            return mem[108 len 20], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                   150,
                   ext_call.return_data[0],
                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
        staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
        staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.vaultDebt(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
        staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.vaultCollateral(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
        staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
        staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.getEthPriceSource() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xfa19c1d104f4aefb8d5564f02b3adca1b515da58)
        staticcall 0xfa19c1d104f4aefb8d5564f02b3adca1b515da58.0xe5f4dc92 with:
                gas gas_remaining wei
    else:
        if arg1 == 2:
            require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
            if not arg1:
                staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.vaultOwner(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[96] = ext_call.return_data[12 len 20]
                require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
                staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.vaultDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
                staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.vaultCollateral(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
                staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.getEthPriceSource() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
                if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 100 * 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 15 * 10^9 * ext_call.return_data[0] / 100:
                    revert with 'NH{q', 18
                return mem[108 len 20], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                       150,
                       ext_call.return_data[0],
                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
            staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[96] = ext_call.return_data[12 len 20]
            require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
            staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.vaultDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
            staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.vaultCollateral(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 == 1:
                require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
                staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                        gas gas_remaining wei
            else:
                if arg1 == 2:
                    require ext_code.size(0x665ef3556520b21368754fb644ed3ebf1993ad4)
                    staticcall 0x665ef3556520b21368754fb644ed3ebf1993ad4.0x313ce567 with:
                            gas gas_remaining wei
                else:
                    if arg1 == 3:
                        require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                        staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x313ce567 with:
                                gas gas_remaining wei
                    else:
                        if arg1 == 4:
                            require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                            staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x313ce567 with:
                                    gas gas_remaining wei
                        else:
                            if arg1 != 5:
                                require ext_code.size(0)
                                staticcall 0x0.0x313ce567 with:
                                        gas gas_remaining wei
                            else:
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
            staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.getEthPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x13a7fe3ab741ea6301db8b164290be711f546a73)
            staticcall 0x13a7fe3ab741ea6301db8b164290be711f546a73.0xe5f4dc92 with:
                    gas gas_remaining wei
        else:
            if arg1 == 3:
                require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                if not arg1:
                    staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.vaultOwner(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[96] = ext_call.return_data[12 len 20]
                    require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                    staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.vaultDebt(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                    staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.vaultCollateral(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                    staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.getEthPriceSource() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 100 * 10^6 * ext_call.return_data[0]:
                        return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
                    if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 100 * 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 15 * 10^9 * ext_call.return_data[0] / 100:
                        revert with 'NH{q', 18
                    return mem[108 len 20], 
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                           150,
                           ext_call.return_data[0],
                           10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
                staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[96] = ext_call.return_data[12 len 20]
                require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.vaultDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.vaultCollateral(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 == 1:
                    require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
                    staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                            gas gas_remaining wei
                else:
                    if arg1 == 2:
                        require ext_code.size(0x665ef3556520b21368754fb644ed3ebf1993ad4)
                        staticcall 0x665ef3556520b21368754fb644ed3ebf1993ad4.0x313ce567 with:
                                gas gas_remaining wei
                    else:
                        if arg1 == 3:
                            require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                            staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x313ce567 with:
                                    gas gas_remaining wei
                        else:
                            if arg1 == 4:
                                require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                                staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x313ce567 with:
                                        gas gas_remaining wei
                            else:
                                if arg1 != 5:
                                    require ext_code.size(0)
                                    staticcall 0x0.0x313ce567 with:
                                            gas gas_remaining wei
                                else:
                                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.getEthPriceSource() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8)
                staticcall 0xa9122dacf3fccf1aae6b8ddd1f75b6267e5cbbb8.0xe5f4dc92 with:
                        gas gas_remaining wei
            else:
                if arg1 == 4:
                    require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                    if not arg1:
                        staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.vaultOwner(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[96] = ext_call.return_data[12 len 20]
                        require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                        staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.vaultDebt(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                        staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.vaultCollateral(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                        staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.getEthPriceSource() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
                        if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not 15 * 10^9 * ext_call.return_data[0] / 100:
                            revert with 'NH{q', 18
                        return mem[108 len 20], 
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                               150,
                               ext_call.return_data[0],
                               10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
                    staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[96] = ext_call.return_data[12 len 20]
                    require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                    staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.vaultDebt(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                    staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.vaultCollateral(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 == 1:
                        require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
                        staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                                gas gas_remaining wei
                    else:
                        if arg1 == 2:
                            require ext_code.size(0x665ef3556520b21368754fb644ed3ebf1993ad4)
                            staticcall 0x665ef3556520b21368754fb644ed3ebf1993ad4.0x313ce567 with:
                                    gas gas_remaining wei
                        else:
                            if arg1 == 3:
                                require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                                staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x313ce567 with:
                                        gas gas_remaining wei
                            else:
                                if arg1 == 4:
                                    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                                    staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x313ce567 with:
                                            gas gas_remaining wei
                                else:
                                    if arg1 != 5:
                                        require ext_code.size(0)
                                        staticcall 0x0.0x313ce567 with:
                                                gas gas_remaining wei
                                    else:
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                    staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.getEthPriceSource() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a)
                    staticcall 0x1f8f7a1d38e41eaf0ed916def29bdd13f2a3f11a.0xe5f4dc92 with:
                            gas gas_remaining wei
                else:
                    if arg1 != 5:
                        require ext_code.size(0)
                        if not arg1:
                            staticcall 0x0.vaultOwner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[96] = ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            staticcall 0x0.vaultDebt(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0)
                            staticcall 0x0.vaultCollateral(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0)
                            staticcall 0x0.getEthPriceSource() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
                            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not 15 * 10^9 * ext_call.return_data[0] / 100:
                                revert with 'NH{q', 18
                            return mem[108 len 20], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                                   150,
                                   ext_call.return_data[0],
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
                        staticcall 0x0.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[96] = ext_call.return_data[12 len 20]
                        require ext_code.size(0)
                        staticcall 0x0.vaultDebt(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0)
                        staticcall 0x0.vaultCollateral(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 == 1:
                            require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
                            staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                                    gas gas_remaining wei
                        else:
                            if arg1 == 2:
                                require ext_code.size(0x665ef3556520b21368754fb644ed3ebf1993ad4)
                                staticcall 0x665ef3556520b21368754fb644ed3ebf1993ad4.0x313ce567 with:
                                        gas gas_remaining wei
                            else:
                                if arg1 == 3:
                                    require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                                    staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x313ce567 with:
                                            gas gas_remaining wei
                                else:
                                    if arg1 == 4:
                                        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                                        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x313ce567 with:
                                                gas gas_remaining wei
                                    else:
                                        if arg1 != 5:
                                            require ext_code.size(0)
                                            staticcall 0x0.0x313ce567 with:
                                                    gas gas_remaining wei
                                        else:
                                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0)
                        staticcall 0x0.getEthPriceSource() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0)
                        staticcall 0x0.0xe5f4dc92 with:
                                gas gas_remaining wei
                    else:
                        require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                        if not arg1:
                            staticcall 0x73a755378788a4542a780002a75a7bae7f558730.vaultOwner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[96] = ext_call.return_data[12 len 20]
                            require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                            staticcall 0x73a755378788a4542a780002a75a7bae7f558730.vaultDebt(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                            staticcall 0x73a755378788a4542a780002a75a7bae7f558730.vaultCollateral(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                            staticcall 0x73a755378788a4542a780002a75a7bae7f558730.getEthPriceSource() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                return mem[108 len 20], ext_call.return_data[0], ext_call.return_data[0], -1, 150, ext_call.return_data[0], -1
                            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] and 150 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not 15 * 10^9 * ext_call.return_data[0] / 100:
                                revert with 'NH{q', 18
                            return mem[108 len 20], 
                                   ext_call.return_data[0],
                                   ext_call.return_data[0],
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
                                   150,
                                   ext_call.return_data[0],
                                   10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 15 * 10^9 * ext_call.return_data[0] / 100
                        staticcall 0x73a755378788a4542a780002a75a7bae7f558730.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[96] = ext_call.return_data[12 len 20]
                        require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                        staticcall 0x73a755378788a4542a780002a75a7bae7f558730.vaultDebt(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                        staticcall 0x73a755378788a4542a780002a75a7bae7f558730.vaultCollateral(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 == 1:
                            require ext_code.size(0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090)
                            staticcall 0x1b156c5c75e9df4caab2a5cc5999ac58ff4f9090.0x313ce567 with:
                                    gas gas_remaining wei
                        else:
                            if arg1 == 2:
                                require ext_code.size(0x665ef3556520b21368754fb644ed3ebf1993ad4)
                                staticcall 0x665ef3556520b21368754fb644ed3ebf1993ad4.0x313ce567 with:
                                        gas gas_remaining wei
                            else:
                                if arg1 == 3:
                                    require ext_code.size(0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab)
                                    staticcall 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab.0x313ce567 with:
                                            gas gas_remaining wei
                                else:
                                    if arg1 == 4:
                                        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                                        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x313ce567 with:
                                                gas gas_remaining wei
                                    else:
                                        if arg1 != 5:
                                            require ext_code.size(0)
                                            staticcall 0x0.0x313ce567 with:
                                                    gas gas_remaining wei
                                        else:
                                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x313ce567 with:
                                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                        staticcall 0x73a755378788a4542a780002a75a7bae7f558730.getEthPriceSource() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x73a755378788a4542a780002a75a7bae7f558730)
                        staticcall 0x73a755378788a4542a780002a75a7bae7f558730.0xe5f4dc92 with:
                                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[0] + 18:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0]:
            return mem[108 len 20], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   -1,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 100 * 10^6 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100:
            revert with 'NH{q', 18
        return mem[108 len 20], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100
    if bool(bool(-ext_call.return_data[0] + 18 < 78)) or bool(bool(-ext_call.return_data[0] + 18 < 32)):
        if ext_call.return_data[0] and 10^(-ext_call.return_data[0] + 18) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0]:
            return mem[108 len 20], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   -1,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 100 * 10^6 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 100 * 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100:
            revert with 'NH{q', 18
        return mem[108 len 20], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 100 * 10^6 * ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100
    s = 10
    t = 1
    idx = -ext_call.return_data[0] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 100 * 10^6 * ext_call.return_data[0]:
        return mem[108 len 20], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               -1,
               ext_call.return_data[0],
               ext_call.return_data[0],
               -1
    if ext_call.return_data[0] * ext_call.return_data[0] * s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not 100 * 10^6 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * 10^6 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 100 * 10^6 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] * s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100:
        revert with 'NH{q', 18
    return mem[108 len 20], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 100 * 10^6 * ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100
}



}
